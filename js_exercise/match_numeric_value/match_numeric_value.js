function MatchNumericalValue(formElements) {
  this.formElements = formElements;
}
MatchNumericalValue.prototype.REGEX = /^\d+$/;
MatchNumericalValue.prototype.validate = function () {
  return this.REGEX.test(this.formElements[0].value);
}
MatchNumericalValue.prototype.writeBoolean = function (event) {
  this.formElements[1].value = this.validate();
  if (!this.validate()) {
    event.preventDefault();
  }
}
MatchNumericalValue.prototype.bindEvents = function () {
  this.formElements[2].addEventListener('click', this.writeBoolean.bind(this));
}
window.onload = function () {
  var obj = new MatchNumericalValue(document.forms[0]);
  obj.bindEvents();
}
