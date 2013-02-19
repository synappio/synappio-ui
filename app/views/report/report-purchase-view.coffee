template = require './templates/report-purchase'
View = require 'views/base/view'

module.exports = class ReportPurchaseView extends View
  className: 'report-purchase'
  tagName: 'div'
  template: template
  
  initialize: ->
    super
    @delegate 'click', '.purchase-close', @hide
    @delegate 'click', '.purchase-now', @hide

  render: ->
    super
    @modal = @$el.find 'div.modal'
    @modal.modal
      backdrop: "static"
    @show()
  
  show: ->
    @modal.modal 'show'
  
  hide: ->
    @modal.modal 'hide'