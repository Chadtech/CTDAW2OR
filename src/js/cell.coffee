# Libraries
React       = get 'react'
{PropTypes} = get 'react'
ReactDOM    = get 'react-dom'
_           = get 'lodash'

# DOM Elements
{p, a, span, div, input, img} = React.DOM


CellClass = React.createClass

  getInitialState: -> null

  render: ->
    itsClass = 'cell'
    if @props.content.length > 0 
      itsClass += ' filled'

    input
      className:  itsClass
      value:      @props.content
      onChange:   @props.handle
      'data-col': @props.ci
      'data-row': @props.ri

module.exports = React.createFactory CellClass