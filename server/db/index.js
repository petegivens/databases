// var mysql = require('mysql');
var Sequelize = require('sequelize');

// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".

var db = new Sequelize('chat', 'student', 'student');

var User = db.define('users', {
  name: Sequelize.STRING
  // createdAt: {
  //   type: Sequelize.DATE,
  //   defaultValue: Sequelize.NOW
  // },
  // updatedAt: {
  //   type: Sequelize.DATE,
  //   defaultValue: Sequelize.NOW
  // }
}, {
  timestamps: false
});

var Message = db.define('messages', {
  text: Sequelize.STRING,
  roomname: Sequelize.STRING,
  username: Sequelize.STRING
  // createdAt: {
  //   type: Sequelize.DATE,
  //   defaultValue: Sequelize.NOW
  // },
  // updatedAt: {
  //   type: Sequelize.DATE,
  //   defaultValue: Sequelize.NOW
  // }
}, {
  timestamps: false
});

module.exports = {
  db: db,
  User: User,
  Message: Message
};
