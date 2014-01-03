class ApplicationController < ActionController::Base
  before_action :site_information
  before_action :articles_by_month
  protect_from_forgery with: :exception

  # devise ログイン後のリダイレクト
  def after_sign_in_path_for(resource)
    staffs_root_path
  end

  def site_information
    @site = Site.find(:first)
  end

  def current_ability
    if current_staff
      @current_ability ||= Ability.new(current_staff)
    end
  end

  def articles_by_month
    @articles_by_month = Article.find(:all, :order => "created_at DESC").group_by { |article| article.created_at.strftime("%B %Y") }
  end

end
