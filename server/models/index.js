var db = require('../db');

module.exports = {
  messages: {
    get: function (callback) {
      var values = [];
      db.Message.findAll()
      .then((result) => {
        callback(null, result);
      })
      .catch((err) => {
        callback(err);
      });
    }, // a function which produces all the messages
    post: function (message, callback) {
      db.Message.create({
        text: message.message,
        username: message.username,
        roomname: message.roomname
      })
      .then((result) => {
        callback(null, result);
      })
      .catch((err) => {
        callback(err);
      });
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function (callback) {
      db.User.findAll()
      .then((result) => {
        callback(null, result);
      })
      .catch((err) => {
        callback(err);
      });
    },
    post: function (user, callback) {
      db.User.create({
        name: user.username
      })
      .then((result) => {
        callback(null, result);
      })
      .catch((err) => {
        callback(err);
      });
    }
  }
};
