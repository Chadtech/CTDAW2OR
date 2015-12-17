# Libraries
React    = get 'react'
ReactDOM = get 'react-dom'
_        = get 'lodash'
fs       = get 'fs'


# DOM
CtDom     = require './ct-dom'
CtFactory = require './ct-factory'
{ row
  container
  columnNumber
  point
  column } = CtFactory CtDom


AppClass = React.createClass

  getInitialState: -> null

  render: ->
    point null, 'Dank'
       


App = React.createElement AppClass
ReactDOM.render App, document.getElementById 'content'