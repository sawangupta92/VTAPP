var Country = function (add, remove, firstSelectBox, secondSelectBox) {
  this.add = add;
  this.remove = remove;
  this.firstSelectBox = firstSelectBox;
  this.secondSelectBox = secondSelectBox;
};
Country.prototype = {
  constructor: Country,
  move: function (firstSelectBox, secondSelectBox) {
    for (index = 0; index < firstSelectBox.selectedOptions.length; ) {
      secondSelectBox.appendChild(firstSelectBox.selectedOptions[index]);
    }
  },
  bindEvents: function () {
    this.add.addEventListener('click', this.move.bind(this, this.firstSelectBox, this.secondSelectBox));
    this.remove.addEventListener('click', this.move.bind(this, this.secondSelectBox, this.firstSelectBox));
  }
}
window.onload = function () {
  object = new Country(document.getElementById('add'), document.getElementById('remove'), document.getElementById('first_select_box'), document.getElementById('second_select_box'));
  object.bindEvents();
}
