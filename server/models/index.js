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
          console.log(result);
        }
      });
    }, // a function which produces all the messages
    post: function (message, callback) {
      var values = [message.text, message.username, message.roomname];
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
    get: function () {},
    post: function () {}
  }
};
