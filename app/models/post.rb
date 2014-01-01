class Post < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :body
  belongs_to :category

  acts_as_taggable
  acts_as_taggable_on :tags

end
