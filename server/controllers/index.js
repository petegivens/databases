var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res) {
      models.messages.get( (err, result) => {
        res.status(200).send(result);
      });
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      models.messages.post(req.body, (err, result) => {
        res.status(201).send(result);
      });
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {
      models.users.get( (err, result) => {
        res.status(200).send(result);
      });
    },
    getUser: function (req, res) {
      models.users.getUser( req.params.username, (err, result) => {
        res.status(200).send(result);
      });
    },
    post: function (req, res) {
      models.users.post(req.body, (err, result) => {
        res.status(201).send(result);
      });
    }
  }
};
