class AdminController < ApplicationController
  before_filter :authenticate_member!
  layout "admin_application"
end
