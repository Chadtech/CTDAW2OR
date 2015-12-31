# Libraries
React                 = get 'react'
{PropTypes}           = get 'react'
ReactDOM              = get 'react-dom'
_                     = get 'lodash'
fs                    = get 'fs'
cf                    = React.createFactory


# DOM
CtDom     = require './ct-dom'
CtFactory = require './ct-factory'
{ row
  container
  columnNumber
  point
  column } = CtFactory CtDom


# Components
Tracker = cf require './tracker'


Main = React.createClass

  getInitialState: -> null

  render: ->
    container null,
      Tracker()
      Tracker()

module.exports = cf Main

