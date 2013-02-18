Controller = require 'controllers/base/controller'
ListView = require 'views/list-page-view'

module.exports = class ListController extends Controller
  index: ->
    @view = new ListView()
