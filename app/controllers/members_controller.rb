class MembersController < ApplicationController
  def index
    @staffs = Staff.find(:all, :conditions => { :member => true })
    @articles = Article.order('id desc').limit(10)
  end

  def show
    @staff = Staff.find(params[:id], :conditions => { :member => true })
  end

end
