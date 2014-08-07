var Country = function (elements) {
  this.add = elements.add;
  this.remove = elements.remove;
  this.firstSelectBox = elements.firstSelectBox;
  this.secondSelectBox = elements.secondSelectBox;
};
Country.prototype.move = function (firstSelectBox, secondSelectBox) {
  for (index = 0; index < firstSelectBox.selectedOptions.length; ) {
    secondSelectBox.appendChild(firstSelectBox.selectedOptions[index]);
  }
};
Country.prototype.bindEvents = function () {
  this.add.addEventListener('click', this.move.bind(this, this.firstSelectBox, this.secondSelectBox));
  this.remove.addEventListener('click', this.move.bind(this, this.secondSelectBox, this.firstSelectBox));
}
window.onload = function () {
  var elements = {
    'add': document.getElementById('add'),
    'remove': document.getElementById('remove'),
    'firstSelectBox': document.getElementById('first_select_box'),
    'secondSelectBox': document.getElementById('second_select_box')
  }
  object = new Country(elements);
  object.bindEvents();
}
