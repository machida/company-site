class Admin::SnippetsController < ApplicationController
  before_filter :authenticate_admin!
end
