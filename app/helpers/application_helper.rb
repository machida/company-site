module ApplicationHelper

  %w(home article page tag).each do |controller|
    define_method("#{controller}?") do
      params[:controller] == controller
    end
  end

end
