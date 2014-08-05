var Form = function (userInput, formElements) {
  this.userInput = userInput;
  this.formElements = formElements;
};

Form.prototype = {
  validateEmptyField: function () {
    var flag = true;
    for (i = 0; i < this.formElements.length - 3; i++) {
      if (this.formElements[i].value.trim() == '') {
        alert(this.formElements[i].name + ' can\'t be empty');
        flag = false;
      }
    }
    return flag;
  },

  validateLength: function (formElement, event) {
    if (formElement.value.length < 50) {
      alert('textarea length must be atleast 50');
      return false;
    } else {
      return true;
    }
  },

  validate: function (event) {
    event.preventDefault();
    if (this.validateEmptyField() & this.validateLength(this.formElements['about_me'], event) & this.CheckedAtLeastOnce()) {
      this.formElements.submit()
    }
  },

  confirmNotification: function () {
    this.formElements['notification'].checked = this.formElements['notification'].checked && confirm('you sure you want notifications')
    notificationSeen = true;
  },

  CheckedAtLeastOnce: function () {
    if (typeof notificationSeen == 'undefined') {
      notificationSeen = true;
      this.formElements['notification'].checked = confirm('do you want notifications');
      return true
    } else {
      return true;
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
