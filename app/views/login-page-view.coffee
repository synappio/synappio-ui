template = require 'views/templates/login'
View = require 'views/base/view'

module.exports = class LoginPageView extends View
  autoRender: yes
  className: 'login-page'
  container: '#page-container'
  containerMethod: 'html'
  template: template
