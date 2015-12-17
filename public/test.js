(function() {
  var React, Test;

  React = require('react');

  Test = React.createClass({
    getInitialState: function() {
      return null;
    },
    render: function() {
      return p(null, 'DOPE');
    }
  });

  module.exports = Test;

}).call(this);
