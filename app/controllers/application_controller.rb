class ApplicationController < ActionController::Base
  before_action :site_information
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
end
