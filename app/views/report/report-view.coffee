template = require './templates/report'
View = require 'views/base/view'

module.exports = class ReportView extends View
  className: 'report'
  tagName: 'div'
  template: template

  initialize: ->
    super
    @delegate 'click', '.report-start-buy-button', @startBuy
    @delegate 'click', '.report-complete-buy-button', @completeBuy

    resizeTimer = null
    $(window).bind "resize", =>
      clearTimeout resizeTimer
      resizeTimer = setTimeout @makeChart, 100

  remove: ->
    $(window).unbind "resize"
    super

  render: ->
    super
    @makePopups()
    # HACK I can't get chaplin to say when the view's in the DOM
    setTimeout @makeChart, 1000

  makeChart: =>
    options =
      colors: ['#94BA65', '#2B4E72', '#2790B0', '#777','#555','#999','#bbb','#ccc','#eee']
      series:
        pie:
          show: true
          innerRadius: 0
          stroke:
            width: 4
      legend:
        position: 'ne'
      tooltip: true
      tooltipOpts:
        content: '%s: %y'
      grid:
        hoverable: true
        
    $.plot(@$el.find('div.chart'), @model.get('data'), options);

  makePopups: ->
    $ele = @$el.find 'i.report-info-button'
    $ele.popover()

  startBuy: (event) =>
    console.log "startBuy"

  completeBuy: (event) =>
    console.log "completeBuy"