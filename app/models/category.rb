class Category < ActiveRecord::Base
  has_many :post
  extend FriendlyId
  friendly_id :slug, use: :slugged
end
