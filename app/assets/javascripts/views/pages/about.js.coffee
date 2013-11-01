class RezaParang.Views.About extends Backbone.View

  template: JST['pages/about']

  render: ->
    $(@el).html(@template())
    return this