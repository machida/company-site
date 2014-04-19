class Article < Post
  belongs_to :category
  def self.search(search)
    if search
      find(:all, :conditions => ['body LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

  def previous_article
    self.class.where("created_at > ?", created_at).reorder("created_at asc").first
  end

  def next_article
    self.class.where("created_at < ?", created_at).reorder("created_at desc").first
  end

end
