_ = get 'lodash'

initialState =
  sheet: (require './blank-sheet')()
  test:   'fairly dank'


actions =
  test: (state, payload) ->
    console.log 'YEE TEST', payload
    _.extend state, test: payload


_actions = (state, action) ->
    if not state? then state = initialState

    if action?
      {type, payload} = action

    if actions[type]
      state = actions[type] state, payload

    state


module.exports = _actions