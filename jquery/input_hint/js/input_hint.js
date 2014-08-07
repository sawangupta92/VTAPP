var Input = function (element, labelElement, inputClassName) {
  this.element = element;
  this.labelElement = labelElement;
  this.labelText = labelElement.html();
  this.inputClassName = inputClassName;
};
Input.prototype.setValue = function (text) {
  this.element.val(text);
};
Input.prototype.addText = function () {
  this.setValue(this.labelElement.html());
};
Input.prototype.appendClass = function () {
  this.element.addClass(this.inputClassName);
};
Input.prototype.removeElement = function () {
  this.labelElement.remove();
};
Input.prototype.removeHint = function () {
  if (this.element.val() == this.labelElement.html()) {
    this.element.removeClass(this.inputClassName);
    this.setValue('');
  }
};
Input.prototype.addClassText = function () {
  if (!this.element.val()) {
    this.setValue(this.labelText);
    this.appendClass(this.inputClassName);
  }
};
Input.prototype.bindEvents = function () {
  var _this = this;
  this.element.on('focus', function () {
    _this.removeHint();
  }) .on('blur', function () {
    _this.addClassText();
  });
};
Input.prototype.initialize = function () {
  this.addText();
  this.appendClass();
  this.removeElement();
  this.bindEvents();
}
$(document) .ready(function () {
  var labelElement = $('[for=q]');
  obj = new Input($('.input_text'), labelElement, 'hint');
  obj.initialize()
});
