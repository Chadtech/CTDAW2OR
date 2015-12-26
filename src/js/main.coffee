# Libraries
React                 = get 'react'
{PropTypes}           = get 'react'
ReactDOM              = get 'react-dom'
_                     = get 'lodash'
fs                    = get 'fs'
{bindActionCreators}  = get 'redux'
{connect}             = get 'react-redux'
cf                    = React.createFactory
actions               = require './actions'




# DOM
CtDom     = require './ct-dom'
CtFactory = require './ct-factory'
{ row
  container
  columnNumber
  point
  column } = CtFactory CtDom


# Components
Tracker = cf (connect((state) => store: state)) (cf (require './tracker'))
Test    = require './test'
# Tracker = require './tracker'


Main = React.createClass

  propTypes:
    test: PropTypes.string.isRequired

  handle: ->
    # console.log @props.store, @props.dispatch, 'B'
    console.log 'B'
    Actions = bindActionCreators actions, @props.dispatch 
    console.log 'C'

    Actions.do 
      payload:  'WILLIAM'
      type:     'test'

    console.log @props.store

  getInitialState: -> null

  render: ->
    actions = bindActionCreators actions, @props.dispatch 
    # console.log 'A', @props.store

    container null,
      Tracker()
      Tracker()
      # Test()
      # row null,
      #   column null,
      #     point 
      #       onClick: @handle
      #       @props.store.test


module.exports = cf (connect((state) => store: state) (cf Main))

