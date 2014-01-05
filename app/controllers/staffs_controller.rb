class StaffsController < ApplicationController
  before_filter :authenticate_staff!
  layout "staffs_application"
end
