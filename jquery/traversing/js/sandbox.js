$('img[alt]').each(function(i,e){console.log(e.alt)});
$('input').parent().addClass('traverseClass')
list = $('#myList li.current')
list.next().addClass('current')
list.removeClass('current')
$('#specials select + input[type=submit]')
$('#slideshow li:eq(0)').addClass('current')
$('#slideshow li:eq(0) ~ li').addClass('disabled')