class RezaParang.Routers.Articles extends Backbone.Router
  routes:
    '': 'index'
    #'about': 'about'
    'blog': 'blog'
    'projects': 'projects'
    'papers': 'papers'
    'blog/:id': 'show'
    'new': 'new'

  initialize: ->
    view = new RezaParang.Views.Navigation()
    $('#container').html(view.render().el)    

  index: ->
    @renderContent("all")

  #about: ->
  #  view = new RezaParang.Views.About()
  #  $('#content').html(view.render().el)

  blog: ->
    @renderContent("blog")

  projects: ->
    @renderContent("project")

  papers: ->
    @renderContent("paper")

  show: (id) ->
    _this = this
    @collection = this.getCollection()
    if @collection?
      @model = @collection.get(id)
      view = new RezaParang.Views.Show(model: @model)
      $('#content').html(view.render().el)
    else
      @collection = new RezaParang.Collections.Articles()
      @collection.fetch
        success: (collection) ->
          _this.setCollection(collection)
          @model = collection.get(id)
          view = new RezaParang.Views.Show(model: @model)
          $('#content').html(view.render().el)

  new: ->
    @collection = new RezaParang.Collections.Articles()
    @collection.fetch
      success: (collection) ->
        view = new RezaParang.Views.ArticlesNew(collection: collection)
        $('#content').html(view.render().el)

  renderContent: (type) ->
    _this = this
    @collection = this.getCollection()
    if @collection?
      view = new RezaParang.Views.ArticlesIndex({collection: @collection.byType(type), type: type })
      $('#content').html(view.render().el)
    else
      @collection = new RezaParang.Collections.Articles()
      @collection.fetch
        success: (collection) ->
          _this.setCollection(collection)
          view = new RezaParang.Views.ArticlesIndex({ collection: collection.byType(type), type: type })
          $('#content').html(view.render().el)

  getCollection: ->
    return @currentCollection

  setCollection: (lot) ->
    @currentCollection = lot