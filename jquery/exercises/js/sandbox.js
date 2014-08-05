// selecting

// Select all of the div elements that have a class of "module".
$('div.module')

// Come up with three selectors that you could use to get the third item in the #myList unordered list. Which is the best to use? Why?
$('#myList li:eq(2)')
$('#myList li:nth-child(3)')
$('#myList li:nth-of-type(3)')
// nth-child and nth-of-type selector first selects all elements which are nth-child of thier parent and then filters
// the result. but 'eq' selector first filters and then selects nth-child of only that filtered result so 'eq' is faster

// Select the label for the search input using an attribute selector.
$("label[for=" + $('.input_text').attr('name') + "]")

// Figure out how many elements on the page are hidden
$('[hidden]').length

// Figure out how many image elements on the page have an alt attribute.
$('[alt]').length

// Select all of the odd table rows in the table body.
$('tbody tr:odd')

//Traversing

//Select all of the image elements on the page; log each image's alt attribute.
$('img[alt]').each(function(i,e){console.log(e.alt)});

// Select the search input text box, then traverse up to the form and add a class to the form.
$('input[type=text]').parent().addClass('searchClass');

// Select the list item inside #myList that has a class of "current" and remove that class from it; add a class of "current" to the next list item.
listElement = $('#myList li.current');
listElement.removeClass('current');
listElement.next().addClass('current');

// Select the select element inside #specials; traverse your way to the submit button.
$('#specials select').parent().next()[0];

// Select the first list item in the #slideshow element; add the class "current" to it, and then add a class of "disabled" to its sibling elements.
$('#slideshow li:eq(0)').addClass('current');
$('#slideshow li:eq(0)').nextAll().addClass('disabled');