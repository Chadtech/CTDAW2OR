# Libraries
React       = get 'react'
{PropTypes} = get 'react'
ReactDOM    = get 'react-dom'
_           = get 'lodash'


# DOM
CtDom     = require './ct-dom'
CtFactory = require './ct-factory'
{ row
  container
  columnNumber
  point
  column 
  tracker
  # cell
  # cellFilled
  button
  nullButton } = CtFactory CtDom


Cell      = require './cell'
DropDown  = require './dropdown'
DropRight = require './dropright'


TrackerClass = React.createClass

  propTypes:
    test: PropTypes.string.isRequired
    sheet: PropTypes.object.isRequired

  getInitialState: ->
    sheet:    (require './blank-sheet')()
    position: [ 0, 0 ]  

  handleCell: (e) ->
    ci = e.target.getAttribute 'data-col'
    ri = e.target.getAttribute 'data-row'
    @state.sheet[ri][ci] = e.target.value
    @setState sheet: @state.sheet

  render: -> 

    sheet = @props.store.sheet

    columnNumbers = _.map sheet[0], (c, ci) =>
      column null,
        DropDown
          content: ci


    tracker null,
      container null,
        row null,
          column()
          columnNumbers


        _.map sheet, (r, ri) =>
          row null, 
            column null,
              DropRight
                content: ri


            _.map r, (c, ci) =>
              column null,

                Cell
                  ci:      ci
                  ri:      ri
                  handle:  @handleCell
                  content: c


module.exports = TrackerClass