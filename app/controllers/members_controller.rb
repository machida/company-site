class MembersController < ApplicationController
  def index
    @staffs = Staff.published
    add_breadcrumb "home", root_path
    add_breadcrumb "members", members_path
  end

  def show
    @staff = Staff.published.friendly.find(params[:id])
    add_breadcrumb "home", root_path
    add_breadcrumb "members", members_path
    add_breadcrumb @staff.name, member_path
  end

end
