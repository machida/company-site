module ApplicationHelper

  %w(home articles pages tags categories members services archives contacts).each do |controller|
    define_method("#{controller}?") do
      params[:controller] == controller and params[:action] == 'index'
    end
  end

  %w(articles pages tags categories members services archives contacts).each do |controller|
    define_method("#{controller.singularize}?") do
      (params[:controller] == controller and params[:action] == 'show') or (params[:controller] == controller and params[:action] == 'new')
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

  def current_path(path)
    "is-current" if current_page?(path)
  end

  def current_controller(controller)
    "is-current" if current_page?(:controller => controller)
  end


  def show_date(time)
    return time unless time
    time.strftime("%Y/%m/%d")
  end

  def show_at(time)
    return time unless time
    time.strftime("%Y/%m/%d %H:%M:%S")
  end

  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end

end
