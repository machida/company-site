class MembersController < ApplicationController
  def index
    @staffs = Staff.published
  end

  def show
    @staff = Staff.published.friendly.find(params[:id])
  end

end
