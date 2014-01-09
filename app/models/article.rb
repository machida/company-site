class Article < Post
  belongs_to :category
  def self.search(search)
    if search
      find(:all, :conditions => ['body LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
  scope :published, -> { where(published: true) }
  scope :unpublished, -> { where(published: false) }

end
