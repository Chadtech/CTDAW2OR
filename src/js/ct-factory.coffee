# Libraries
React     = require 'react'
ReactDOM  = require 'react-dom'
_         = require 'lodash'


# DOM Elements
{p, a, span, div, input, img} = React.DOM


R           = React.DOM
CtFactory   = _.reduce [ {}, 'div', 'p', 'a', 'span' ], (sum, item) ->
  sum[item] = (className) ->
    ->
      className = [className, @props.className ? '' ].join ' '
      props     = _.extend {}, @props, className: className
      R[item].apply R[item], [ props ].concat @props.children
  sum


module.exports = (components) ->
  _.mapValues components, (type, key) ->
    component = CtFactory[type] key
    component = render: component
    component = React.createClass component
    React.createFactory component

