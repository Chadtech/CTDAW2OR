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
{ nullButton } = CtFactory CtDom


DropRightClass = React.createClass

  getInitialState: -> 
    isDropped: false

  drop: (event) ->
    @setState isDropped: not @state.isDropped

  render: ->

    dropright = null
    if @state.isDropped
      dropright = 
        div 
          className:        'dropright'

          div className:    'list-right',
            div className:  'list-right-Item zero',
              input 
                className:  'button'
                type:       'submit'
                onClick:    @drop
                value:      'close'

            div className:  'list-right-Item one',
              input 
                className:  'button G'
                type:       'submit'
                onClick:    @drop
                value:      '+v'

            div className:  'list-right-Item two',
              input 
                className:  'button G'
                type:       'submit'
                onClick:    @drop
                value:      '+^'

            div className:  'list-right-Item three',
              input 
                className:  'button'
                type:       'submit'
                onClick:    @drop
                value:      'X'


    div null,
      nullButton
        value:    @props.content + ''
        type:     'submit'
        onClick:  @drop
      dropright



module.exports = React.createFactory DropRightClass