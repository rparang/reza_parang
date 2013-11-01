class RezaParang.Views.Article extends Backbone.View

  template: JST['articles/article']

  className: 'article'

  events:
    'click': 'showArticle'

  render: ->
    $(@el).html(@template(article: @model))
    return this

  showArticle: ->
    Backbone.history.navigate("blog/#{@model.get('id')}", true)