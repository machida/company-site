class MembersController < ApplicationController
  def index
    @staffs = Staff.find(:all, :conditions => { :member => true })
  end

  def show
    @staff = Staff.friendly.find(params[:id], :conditions => { :member => true })
  end

end
