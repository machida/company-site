class Post < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :body
  belongs_to :staff

  acts_as_taggable
  acts_as_taggable_on :tags

  default_scope -> { order('created_at DESC') }

  scope :published, -> { where(published: true) }
  scope :unpublished, -> { where(published: false) }

end
