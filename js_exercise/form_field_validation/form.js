var Form = function (userInput, formElements) {
  this.userInput = userInput;
  this.formElements = formElements;
  this.flag = 0;
};
Form.prototype = {
  REGEXFOREMAIL: /^(\w|\d|\.)+@(\w|\d|\.)+$/,
  REGEXFORURL: /^((http|https|ftp):\/\/)/,
  validateEmail: function(formElement){
    if (!this.REGEXFOREMAIL.test(formElement.value)){ 
      alert('not valid email id');
      this.flag = 1;
    }
  },
  validateHomePage: function(formElement){
    if(!this.REGEXFORURL.test(formElement.value)){ 
      alert('not valid URL');
      this.flag = 1;
    }
  },
  validateEmptyField: function (formElement, event) {
    if (formElement.value == '') {
      alert(formElement.name + ' can\'t be empty');
      this.flag = 1;
    }
  },
  validateLength: function (formElement, event) {
    if (formElement.value.length < 50) {
      alert('textarea length must be atleast 50');
      this.flag = 1;
    }
  },
  validate: function (event) {
    event.preventDefault();
    for (i = 0; i < this.formElements.length - 3; i++) {
      this.validateEmpty(this.formElements[i], event);
    }
    this.validateLength(this.formElements['about_me'], event);
    this.validateEmail(this.formElements['email'])
    this.validateHomePage(this.formElements['home_page'])
    if(this.flag != 1){
      this.formElements.submit()
    }
  },
  confirmNotification: function () {
    if (this.formElements['notification'].checked) {
      if (!confirm('you sure you want notifications')) {
        this.formElements['notification'].checked = false;
      }
    }
  },
  bindEvents: function () {
    this.formElements.addEventListener('submit', this.validate.bind(this));
    this.formElements['notification'].addEventListener('click', this.confirmNotification.bind(this));
  }
};
window.onload = function () {
  object = new Form(document.getElementsByClassName('textInput'), document.forms[0]);
  object.bindEvents();
}
