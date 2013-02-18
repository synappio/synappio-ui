PageView = require 'views/base/page-view'
template = require './templates/list-page'
Reports = require 'models/collections/reports'
ReportsView = require 'views/report/reports-view'
# No list model yet, but needs one with meta data on email list
# List = require 'models/list'

module.exports = class ListPageView extends PageView
  autoRender: yes
  className: 'list-page'
  container: '#page-container'
  containerMethod: 'html'
  template: template

  renderSubviews: ->
    @reports = new Reports
    @subview 'reports', new ReportsView
      collection: @reports,
      container: @$('.list-report-container')
    @reports.fetch()