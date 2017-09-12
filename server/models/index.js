var db = require('../db');

module.exports = {
  messages: {
    get: function (callback) {
      var values = [];
      db.query('SELECT * FROM messages', values, (err, result) => {
        if (err) {
          callback(err);
        } else {
          callback(null, result);
        }
      });
    }, // a function which produces all the messages
    post: function (message, callback) {
      console.log(message);
      var values = [message.message, message.username, message.roomname];
      db.query('INSERT INTO messages (text, username, roomname) VALUES (?, ?, ?)', values, (err, result) => {
        if (err) {
          callback(err);
        } else {
          callback(null, result);
        }
      });
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function (callback) {
      db.query('SELECT * FROM users', [], (err, result) => {
        if (err) {
          callback(err);
        } else {
          callback(null, result);
        }
      });
    },
    post: function (user, callback) {
      db.query('INSERT INTO users (name) VALUES (?)', [user.username], (err, result) => {
        if (err) {
          callback(err);
        } else {
          callback(null, result);
        }
      });
    }
  }
};
