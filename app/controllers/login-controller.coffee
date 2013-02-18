Controller = require 'controllers/base/controller'
LoginPageView = require 'views/login-page-view'

module.exports = class LoginController extends Controller
  index: ->
    @view = new LoginPageView()
