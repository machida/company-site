module ApplicationHelper

  %w(home articles pages tags categories).each do |controller|
    define_method("#{controller}?") do
      params[:controller] == controller and params[:action] == 'index'
    end
  end

  %w(articles pages tags categories).each do |controller|
    define_method("#{controller.singularize}?") do
      params[:controller] == controller and params[:action] == 'show'
    end
  end

end
