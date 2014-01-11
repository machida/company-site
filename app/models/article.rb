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
    self.class.first(:conditions => ["created_at < ?", created_at], :order => "created_at desc")
  end

  def next_article
    self.class.first(:conditions => ["created_at > ?", created_at], :order => "created_at asc")
  end

end
