class Page < Post
  extend FriendlyId
  friendly_id :slug, use: :slugged
end
