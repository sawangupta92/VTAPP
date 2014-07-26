var User = function (name, age) {
  'use strict';
  this.name = name;
  this.age = age;
};
User.prototype = {
  construtor: User,
  compare: function (user) {
    'use strict';
    if (this.age > user.age) {
      return this.name + ' is older than ' + user.name;
    } else if (this.age === user.age) {
      return user.name + ' is same age as ' + this.name;
    } else {
      return user.name + ' is older than ' + this.name;
    }
  }
};
var user1 = new User('sawan', 2),
  user2 = new User('gupta', 4);
alert(user1.compare(user2));
