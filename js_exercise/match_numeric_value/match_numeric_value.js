var MatchNumericalValue = function (my_form) {
  this.my_form = my_form;
};
MatchNumericalValue.prototype = {
  constructor: MatchNumericalValue,
  validate: function () {
    regex = /^\d+$/;
    return regex.test(this.my_form[0].value);
  },
  write_boolean: function (event) {
    this.my_form[1].value = this.validate();
    if (this.validate()) {
    } else {
      event.preventDefault();
    }
  },
  bind_events: function () {
    this.my_form[2].addEventListener('click', this.write_boolean.bind(this));
  },
};
window.onload = function () {
  obj = new MatchNumericalValue(document.forms[0]);
  obj.bind_events();
}
