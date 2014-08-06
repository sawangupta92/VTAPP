//modules.each()
var navigation = function(modules){
  _that = this;
  this.modules = modules;
  this.list;
}
navigation.prototype.addList = function(){
  var list = '<ul class=nav></ul>';
  _that.list = $(list)
  _that.modules.first().before(list);
  // console.log(_that.modules)
  _that.modules.each(function(index, elem){
 //   console.log($(elem))
    $('.nav').append('<li>'+$('#' + this.id).find('h2').html()+'</li>')
  })
};
navigation.prototype.test = function(){
  console.log(this)
//  this.find('li').hide()
}
navigation.prototype.bindEvents = function(){
//  alert(_that.list)
  _that.list.each(function(index, elem){
    console.log($('.nav').find('li'))
    $('.nav').find('li').bind('click',_that.test)
//    console.log($('#' + this.class))
    //$('#' + this.id).bind('click', _that.test)
  })
}
var modules = $('div.module');
obj = new navigation(modules);
obj.addList();
//$('.nav').find('li')
obj.bindEvents();
//$('div.module').find('li')