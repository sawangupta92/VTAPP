var text = function () {
};
text.prototype.showHide = function () {
  $('.module h3').not($(this)).next().slideUp()
  $(this).next().slideDown()
};
text.prototype.bindEvents = function () {
  $('#blog').find('h3').each(function (index, elem) {
    $(this).bind('click', obj.showHide)
  });
}
var obj = new text();
obj.bindEvents()