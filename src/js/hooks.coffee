{ bindActionCreators } = get 'redux'
actions                = require './actions'

module.exports = (dispatch) ->
  Actions = bindActionCreators actions, dispatch