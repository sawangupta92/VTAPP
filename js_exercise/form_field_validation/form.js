var Form = function (userInput, formElements) {
  this.userInput = userInput;
  this.formElements = formElements;
  this.REGEXFOREMAIL = /^(\w|\d|\.)+@(\w|\d|\.)+$/;
  this.REGEXFORURL = /^((http|https|ftp):\/\/)/;
};
Form.prototype.validateEmail = function (formElement) {
  if (this.REGEXFOREMAIL.test(formElement.value)) {
    return true;
  } else {
    alert('not valid email id');
    return false;
  }
}
Form.prototype.validateUrl = function (formElement) {
  return this.REGEXFORURL.test(formElement.value)
}
Form.prototype.validateHomePage = function (formElement) {
  if (!this.validateUrl(formElement)) {
    alert('not valid URL');
  }
  return this.validateUrl(formElement);
}
Form.prototype.validateEmptyField = function () {
  var flag = true;
  for (i = 0; i < this.formElements.length - 3; i++) {
    if (this.formElements[i].value.trim() == '') {
      alert(this.formElements[i].name + ' can\'t be empty');
      flag = false;
    }
  }
  return flag;
}
Form.prototype.validateLength = function (formElement) {
  if (formElement.value.length < 50) {
    alert('textarea length must be atleast 50');
    return false;
  } else {
    return true;
  }
}
Form.prototype.validate = function (event) {
  event.preventDefault();
  if (this.validateEmptyField() & this.validateLength(this.formElements['about_me']) &
  this.validateEmail(this.formElements['email']) & this.validateHomePage(this.formElements['home_page'])) {
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
