var Name = function (firstName, lastName) {
  this.firstName = firstName;
  this.lastName = lastName;
}
Name.prototype = {
  constructor: Name,
  validate: function (name) {
    var PATTERN = /^([a-z]+)$/i;
    return PATTERN.exec(name);
  },
  show: function () {
    if ((this.validate(this.firstName) && this.validate(this.lastName)) && (this.firstName != null && this.lastName != null)) {
      alert('Hello ' + this.firstName + ' ' + this.lastName);
      document.body.innerHTML = 'Hello ' + this.firstName + ' ' + this.lastName;
    }
  }
};
window.onload = function () {
  firstName = prompt('enter your first name');
  lastName = prompt('enter your last name');
  obj = new Name(firstName, lastName);
  obj.show();
}
