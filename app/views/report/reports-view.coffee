CollectionView = require 'views/base/collection-view'
Report = require 'views/report/report-view'

module.exports = class ReportsView extends CollectionView
  className: 'reports-list'
  itemView: Report
