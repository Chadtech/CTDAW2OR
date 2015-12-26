# Libraries
React       = get 'react'
{PropTypes} = get 'react'
ReactDOM    = get 'react-dom'
_           = get 'lodash'

# DOM Elements
{p, a, span, div, input, img} = React.DOM

# DOM
CtDom     = require './ct-dom'
CtFactory = require './ct-factory'
{ row
  container
  columnNumber
  point
  column } = CtFactory CtDom


TestClass = React.createClass

  getInitialState: -> null

  render: ->
    div 
      className: 'TestDiv'
      point null, 'Test!!'


module.exports = React.createFactory TestClass