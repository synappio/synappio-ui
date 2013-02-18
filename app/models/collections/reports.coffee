Collection = require 'models/base/collection'
Report = require 'models/report'

module.exports = class Reports extends Collection
  model: Report
  url: "/json/reports.json"

  parse: (response) ->
    response.reports