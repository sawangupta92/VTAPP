var Form = function (userInput, formElements) {
  this.userInput = userInput;
  this.formElements = formElements;
};
Form.prototype.REGEXFOREMAIL = /^(\w|\d|\.)+@(\w|\d|\.)+$/;
Form.prototype.REGEXFORURL = /^((http|https|ftp):\/\/)/;
Form.prototype.validateEmail = function (formElement) {
  if (this.REGEXFOREMAIL.test(formElement.value)) {
    return true;
  } else {
    alert('not valid email id');
    return false;
  }
}
Form.prototype.validateHomePage = function (formElement) {
  if (this.REGEXFORURL.test(formElement.value)) {
    return true;
  } else {
    alert('not valid URL');
    return false;
  }
}
Form.prototype.validateEmptyField = function () {
  var flag = true;
  for (i = 0; i < this.formElements.length - 3; i++) {
    if (this.formElements[i].value == '') {
      alert(this.formElements[i].name + ' can\'t be empty');
      flag = false;
    }
  }
  return flag;
}
Form.prototype.validateLength = function (formElement, event) {
  if (formElement.value.length < 50) {
    alert('textarea length must be atleast 50');
    return false;
  } else {
    return true;
  }
}
Form.prototype.validate = function (event) {
  var flag = true;
  event.preventDefault();
  flag = this.validateEmptyField() && flag;
  flag = this.validateLength(this.formElements['about_me'], event) && flag;
  flag = this.validateEmail(this.formElements['email']) && flag;
  flag = this.validateHomePage(this.formElements['home_page']) && flag;
  if (flag) {
    this.formElements.submit()
  }
}
Form.prototype.confirmNotification = function () {
  if (this.formElements['notification'].checked) {
    if (!confirm('you sure you want notifications')) {
      this.formElements['notification'].checked = false;
    }
  }
}
Form.prototype.bindEvents = function () {
  this.formElements.addEventListener('submit', this.validate.bind(this));
  this.formElements['notification'].addEventListener('click', this.confirmNotification.bind(this));
}
window.onload = function () {
  object = new Form(document.getElementsByClassName('textInput'), document.forms[0]);
  object.bindEvents();
}
