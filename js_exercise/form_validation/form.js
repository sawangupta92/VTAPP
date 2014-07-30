var Form = function (user_input, my_form) {
  this.user_input = user_input;
  this.my_form = my_form;
};
Form.prototype = {
  constructor: Form,
  validate: function (event) {
    for (i = 0; i < this.my_form.length - 1; i++) {
      if (this.my_form[i].value == '') {
        alert(this.my_form[i].name + ' can\'t be empty');
        event.preventDefault();
      }
    }
    if (this.my_form['about_me'].value.length < 50) {
      alert('textarea legth must be atleast 50');
      event.preventDefault();
    }
  },
  confirm_notification: function () {
    if (this.my_form['notification'].checked) {
      con = confirm('you sure you want notifications');
      if (!con) {
        this.my_form['notification'].checked = false;
      }
    }
  },
  bind_events: function () {
    this.my_form.addEventListener('submit', this.validate.bind(this));
    this.my_form['notification'].addEventListener('click', this.confirm_notification.bind(this));
  }
};
window.onload = function () {
  object = new Form(document.getElementsByClassName('textInput'), document.forms[0]);
  object.bind_events();
}
