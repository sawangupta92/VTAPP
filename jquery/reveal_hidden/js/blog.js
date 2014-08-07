var text = function () {
  this.visibleModule;
};
text.prototype.showHide = function () {
  $('.module h3').not($(this)).next().slideUp()
  $(this).next().slideDown()
};
text.prototype.bindEvents = function () {
  $('#blog').find('h3').on('click', this.showHide)
};
var obj = new text();
obj.bindEvents()
