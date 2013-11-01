class RezaParang.Views.ArticlesIndex extends Backbone.View

  template: JST['articles/index']

  render: ->
    console.log(this.options.type)
    $(@el).html(@template({ type: this.options.type }))
    @collection.each(@appendArticle, this)
    return this

  appendArticle: (entry) ->
    view = new RezaParang.Views.Article(model: entry)
    if entry.get('is_project') == true
      this.$('#projects').append(view.render().el)
    else if entry.get('is_paper') == true
      this.$('#papers').append(view.render().el)
    else
      this.$('#blogs').append(view.render().el)