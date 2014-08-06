var input = function (elem, labelElem) {
  _that = this;
  this.elem = elem;
  this.labelElem = labelElem;
  this.labelText = labelElem.html();
};
input.prototype.setValue = function (text) {
  _that.elem.val(text);
}
input.prototype.addText = function () {
  _that.setValue(_that.labelElem.html());
};
input.prototype.appendClass = function (className) {
  _that.elem.addClass(className);
};
input.prototype.removeElement = function () {
  _that.labelElem.remove();
};
input.prototype.removeHint = function () {
  _that.elem.removeClass('hint');
  _that.setValue('');
};
input.prototype.addClassText = function () {
  if(!_that.elem.val()) {
    _that.setValue(_that.labelText);
    _that.appendClass('hint');
  }
};
input.prototype.bindEvents = function () {
  _that.elem.bind('focus', _that.removeHint);
  _that.elem.bind('blur', _that.addClassText);
};
$(document) .ready(function () {
  var labelElem = $('[for=q]');
  obj = new input($('input[type=text]'), labelElem);
  obj.addText();
  obj.appendClass('hint');
  obj.removeElement();
  obj.bindEvents();
});
