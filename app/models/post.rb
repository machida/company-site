class Post < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :body
  belongs_to :staff

  acts_as_taggable
  acts_as_taggable_on :tags

  scope :published, -> { where(published: true) }
  scope :unpublished, -> { where(published: false) }

end
