class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # devise ログイン後のリダイレクト
  def after_sign_in_path_for(resource)
    admin_root_path
  end
end
