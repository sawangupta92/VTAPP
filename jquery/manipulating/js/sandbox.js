// Add five new list items to the end of the unordered list #myList.
for (i=8;i<13;i++){
$('#myList').append('<li>List item' + i + '</li>')
}

// Remove the odd list items
$('#myList li:odd').remove()

// Add another h2 and another paragraph to the last div.module
$('div.module:last').append('<h2>heading 2</h2>')
$('div.module:last').append('<p>paragraph tag</p>')

// Add another option to the select element; give the option the value "Wednesday"
$('select').append('<option>wednesday</option>')

// Add a new div.module to the page after the last one; put a copy of one of the existing images inside of it.
$('div.module:last').after('<div class="module"></div>')
$('div.module:last').append($('img:first').clone())