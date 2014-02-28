class RezaParang.Views.Navigation extends Backbone.View

  template: JST['layouts/navigation']
  events:
    'click #home': 'goToHome'
    #'click #about': 'goToAbout'
    'click #blog': 'goToBlog'
    'click #projects': 'goToProjects'
    'click #papers': 'goToPapers'

  render: ->
    $(@el).html(@template())
    return this

  goToHome: ->
    Backbone.history.navigate("/", true)

  #goToAbout: ->
  #  Backbone.history.navigate("/about", true)

  goToBlog: ->
    Backbone.history.navigate("/blog", true)

  goToProjects: ->
    Backbone.history.navigate("/projects", true)

  goToPapers: ->
    Backbone.history.navigate("/papers", true)