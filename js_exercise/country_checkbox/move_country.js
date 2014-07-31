var Country = function (add, remove) {
  this.add = add;
  this.remove = remove;
};
Country.prototype = {
  constructor: Country,
  add_remove: function (firstSelectBox, secondSelectBox) {
    for (index = 0; index < firstSelectBox.selectedOptions.length; )
    secondSelectBox.appendChild(firstSelectBox.selectedOptions[index]);
  },
  bindEvents: function (firstSelectBox, secondSelectBox) {
    this.add.addEventListener('click', this.add_remove.bind(this, firstSelectBox, secondSelectBox));
    this.remove.addEventListener('click', this.add_remove.bind(this, secondSelectBox, firstSelectBox));
  }
}
obj = new Country(document.getElementById('add'), document.getElementById('remove'));
obj.bindEvents(document.getElementById('first_select_box'), document.getElementById('second_select_box'));
