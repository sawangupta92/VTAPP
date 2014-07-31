function MatchNumericalValue(form_elements) {
  this.form_elements = form_elements;
}
MatchNumericalValue.prototype.REGEX = /^\d+$/;
MatchNumericalValue.prototype.validate = function () {
  return this.REGEX.test(this.form_elements[0].value);
}
MatchNumericalValue.prototype.writeBoolean = function (event) {
  this.form_elements[1].value = this.validate();
  if (!this.validate()) {
    event.preventDefault();
  }
}
MatchNumericalValue.prototype.bindEvents = function () {
  this.form_elements[2].addEventListener('click', this.writeBoolean.bind(this));
}
window.onload = function () {
  var obj = new MatchNumericalValue(document.forms[0]);
  obj.bindEvents();
}
