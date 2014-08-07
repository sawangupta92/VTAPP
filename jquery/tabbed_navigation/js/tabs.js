var navigation = function (allModules) {
  this.allModules = allModules;
};

navigation.prototype.hideAll = function () {
  this.allModules.hide();
};

navigation.prototype.createList = function () {
  $('.module:first').before('<li class=nav></li>');
};

navigation.prototype.addElementsInList = function () {
  this.allModules.each(function (index, elem) {
    $('.nav').append('<li>' + $('#' + this.id).find('h2').html() + '</li>');
  })
};

navigation.prototype.display = function (element) {
  $('#' + $(element).addClass('current').html().toLowerCase()).show();
  this.allModules.not($('#' + $(element).html().toLowerCase())).hide();
  $('.nav li').not(element).removeClass('current');
};

navigation.prototype.bindEvents = function () {
  var _this = this;
  $('.nav li').on('click', function(){
    _this.display(this);
  })
};

navigation.prototype.initialize = function(){
  this.createList();
  this.addElementsInList();
  this.hideAll();
  this.bindEvents();  
}

var obj = new navigation($('.module'));
obj.initialize();