//Traversing

//Select all of the image elements on the page; log each image's alt attribute.
$('img').each(function(index,element){console.log(element.alt)});

// Select the search input text box, then traverse up to the form and add a class to the form.
$('[type=text]').closest('form').addClass('searchClass').css("background-color", "green");

// Select the list item inside #myList that has a class of "current" and remove that class from it; add a class of "current" to the next list item.
var listElement = $('#myList li.current');
listElement.removeClass('current').next().addClass('current').css("background-color", "#dddddd ");

// Select the select element inside #specials; traverse your way to the submit button.
$('#specials select').closest('ul').find('.input_submit').css("background-color", "#113a45");

// Select the first list item in the #slideshow element; add the class "current" to it, and then add a class of "disabled" to its sibling elements.
var firstListElement = $('#slideshow li:eq(0)');
firstListElement.addClass('current').siblings().addClass('disabled').css("background-color", "#987654");