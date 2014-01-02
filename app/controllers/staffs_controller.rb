class StaffsController < ApplicationController
  before_filter :authenticate_staff!
  layout "admin_application"
end
