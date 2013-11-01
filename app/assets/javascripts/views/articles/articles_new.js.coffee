class RezaParang.Views.ArticlesNew extends Backbone.View
  
  template: JST['articles/new']

  events:
    'submit #new_article': 'createArticle'

  render: ->
    $(@el).html(@template())
    return this

  createArticle: (event) ->
    event.preventDefault()
    attributes =
      'title': $('#title').val()
      'text': $('#text').val()
      'labels': $('#labels').val()
      'is_project': $('#is_project').is(':checked')
      'is_paper': $('#is_paper').is(':checked')
    @collection.create attributes,
      success: ->
        'title': $('#title').val('')