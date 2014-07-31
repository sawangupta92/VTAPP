var Name = function (first_name, last_name) {
  this.first_name = first_name;
  this.last_name = last_name;
}
Name.prototype = {
  constructor: Name,
  validate: function (name) {
    var pattern = /^([a-z]+)$/i;
    return pattern.exec(name);
  },
  show: function () {
    if ((this.validate(this.first_name) && this.validate(this.last_name)) && (this.first_name != null && this.last_name != null)) {
      alert('Hello ' + this.first_name + ' ' + this.last_name);
      document.body.innerHTML = 'Hello ' + this.first_name + ' ' + this.last_name;
    }
  }
};
window.onload = function () {
  first_name = prompt('enter your first name');
  last_name = prompt('enter your last name');
  obj = new Name(first_name, last_name);
  obj.show();
}
