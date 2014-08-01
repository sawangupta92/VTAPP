var Name = function (firstName, lastName) {
  this.firstName = null;
  this.lastName = null;
}
Name.prototype = {
  constructor: Name,
  validate: function (name) {
    var PATTERN = /^([a-z]+)$/i;
    return PATTERN.test(name) && name;
  },
  show: function () {
    if ((this.validate(this.firstName) && this.validate(this.lastName)) && (this.firstName != null && this.lastName != null)) {
      alert('Hello ' + this.firstName + ' ' + this.lastName);
      document.body.innerHTML = 'Hello ' + this.firstName + ' ' + this.lastName;
    }
  },
  input: function (msg){
    var name = '';
    while(!this.validate(name)){
      name = prompt(msg);
    }
    return name;
  }
};
window.onload = function () {
  obj = new Name();
  obj.firstName = obj.input('enter your first name');
  obj.lastName = obj.input('enter your last name');
  obj.show();
}
