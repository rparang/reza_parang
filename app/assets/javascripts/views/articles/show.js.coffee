class RezaParang.Views.Show extends Backbone.View

  template: JST['articles/show']
  tagName: 'article'

  render: ->
    $(@el).html(@template(article: @model))
    return this