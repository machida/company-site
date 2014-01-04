class Category < ActiveRecord::Base
  has_many :articles
  extend FriendlyId
  friendly_id :slug, use: :slugged
end
