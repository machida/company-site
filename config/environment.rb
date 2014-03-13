# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
CompanySite::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV["ACTION_MAILER_USER_NAME"],
  :password => ENV["ACTION_MAILER_PASSWORD"],
  :domain => ENV["ACTION_MAILER_DOMAIN"],
  :address => ENV["ACTION_MAILER_ADDRESS"],
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
ActionMailer::Base.delivery_method = :smtp
