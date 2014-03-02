class Article < ActiveRecord::Base
  attr_accessible :is_paper, :is_project, :labels, :text, :title

  serialize :labels

  default_scope order: 'articles.created_at DESC'

  def self.projects
    self.where(:is_project => true)
  end

end
