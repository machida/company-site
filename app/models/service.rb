class Service < Post
  extend FriendlyId
  friendly_id :slug, use: :slugged
end
