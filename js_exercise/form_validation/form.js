var Form = function (userInput, formElements) {
  this.userInput = userInput;
  this.formElements = formElements;
};
Form.prototype = {
  validate: function (event) {
    for (i = 0; i < this.formElements.length - 3; i++) {
      if (this.formElements[i].value == '') {
        event.preventDefault();
        alert(this.formElements[i].name + ' can\'t be empty');
      }
    }
    if (this.formElements['about_me'].value.length < 50) {
      event.preventDefault();
      alert('textarea length must be atleast 50');
    }
  },
  confirmNotification: function () {
    if (this.formElements['notification'].checked) {
      con = confirm('you sure you want notifications');
      if (!con) {
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
