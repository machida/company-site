class Staffs::SessionsController < Devise::SessionsController
  def new
    render :layout => 'sign_in_application'
  end
end