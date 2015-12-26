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


DropDownClass = React.createClass

  getInitialState: -> 
    isDropped: false

  drop: (event) ->
    @setState isDropped: not @state.isDropped

  render: ->

    dropdown = null
    if @state.isDropped
      dropdown = 
        div 
          className:        'dropdown'

          div className:    'list-down',
            div className:  'list-down-Item zero',
              input 
                className:  'button'
                type:       'submit'
                onClick:    @drop
                value:      'close'

            div className:  'list-down-Item one',
              input 
                className:  'button G'
                type:       'submit'
                onClick:    @drop
                value:      '< add'

            div className:  'list-down-Item two',
              input 
                className:  'button G'
                type:       'submit'
                onClick:    @drop
                value:      'add >'

            div className:  'list-down-Item three',
              input 
                className:  'button'
                type:       'submit'
                onClick:    @drop
                value:      'delete'


    div null,
      nullButton
        value:    @props.content + ''
        type:     'submit'
        onClick:  @drop
      dropdown



module.exports = React.createFactory DropDownClass