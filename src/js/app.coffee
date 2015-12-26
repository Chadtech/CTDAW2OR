# Libraries
React       = get 'react'
{PropTypes} = get 'react'
ReactDOM    = get 'react-dom'
_           = get 'lodash'
fs          = get 'fs'
{Provider}  = get 'react-redux'
{connect}   = get 'react-redux'
cf          = React.createFactory
{devTools} = get 'redux-devtools'

{compose, createStore}   = get 'redux'


# DOM
{div} = React.DOM

#Redux
reducer    = require './reducer'


# Components
Main = require './main'

# finalCreateStore = compose createStore
store            = createStore reducer

Provider = cf Provider
# Connector = React.createFactory Connector

AppClass = React.createClass


  propTypes:
    test: PropTypes.string.isRequired


  getInitialState: -> null


  render: ->

    div null, 
      Provider store: store, 
        Main()      



App = React.createElement AppClass
ReactDOM.render App, document.getElementById 'content'



