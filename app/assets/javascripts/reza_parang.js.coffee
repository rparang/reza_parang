window.RezaParang =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new RezaParang.Routers.Articles()
    Backbone.history.start(pushState: true)

$(document).ready ->
  RezaParang.initialize()
