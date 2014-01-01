class AdminController < ApplicationController
  before_filter :authenticate_author!
  layout "admin_application"
end
