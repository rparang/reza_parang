class RezaParang.Models.Article extends Backbone.Model

  getTruncatedText: (number_of_words) ->
    if this.get('text')?
      if this.get('text').split(' ').length < number_of_words
        return this.get('text')
      else
        return this.get('text').split(' ').slice(0, number_of_words).join(',').replace(/,/g , " ")+"..."