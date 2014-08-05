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
