class RezaParang.Collections.Articles extends Backbone.Collection
  url: '/api/articles'
  model: RezaParang.Models.Article

  byType: (type) ->
    #Underscore's filter iterator
    filtered = this.filter (article) ->
      if type == 'project'
        return article.get('is_project') == true
      else if type == 'paper'
        return article.get('is_paper') == true
      else if type == 'blog'
        return article.get('is_paper') == false && article.get('is_project') == false
      else if type == 'all'
        return article

    #Instantiate a new collection and pass in filtered array
    return new Articles(filtered)