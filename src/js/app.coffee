# Libraries
React       = get 'react'
{PropTypes} = get 'react'
{render}    = get 'react-dom'
_           = get 'lodash'
fs          = get 'fs'
cf          = React.createFactory

# DOM
{div} = React.DOM

# Components
Main = require './main'


App = React.createClass

  getInitialState: -> null

  render: ->
    div null,
      Main()


# App = cf AppClass
render (cf App)(), document.getElementById 'content'



