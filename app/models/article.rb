class Article < ActiveRecord::Base
  attr_accessible :is_paper, :is_project, :labels, :text, :title

  serialize :labels

  def self.projects
    self.where(:is_project => true)
  end

end
