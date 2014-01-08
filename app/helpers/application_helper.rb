module ApplicationHelper

  %w(home articles pages tags categories members services archives).each do |controller|
    define_method("#{controller}?") do
      params[:controller] == controller and params[:action] == 'index'
    end
  end

  %w(articles pages tags categories members services archives).each do |controller|
    define_method("#{controller.singularize}?") do
      params[:controller] == controller and params[:action] == 'show'
    end
  end

  def gravatar_image_url(email = nil, size = nil)
    url = 'http://www.gravatar.com/avatar/'
    url += if email
      Digest::MD5.hexdigest(email)
    else
      '0' * 32
    end
    size ? "#{url}?size=#{size}" : url
  end

end
