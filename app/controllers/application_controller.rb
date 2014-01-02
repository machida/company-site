class ApplicationController < ActionController::Base
  before_action :site_information
  protect_from_forgery with: :exception

  # devise ログイン後のリダイレクト
  def after_sign_in_path_for(resource)
    admin_root_path
  end

  def site_information
    @site = Site.find(:first)
  end

end
