class Site < Post
  extend FriendlyId
  friendly_id :slug, use: :slugged
end
