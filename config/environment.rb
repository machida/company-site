# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
CompanySite::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => Settings.action_mailer.user_name,
  :password => Settings.action_mailer.password,
  :domain => Settings.action_mailer.domain,
  :address => Settings.action_mailer.address,
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
ActionMailer::Base.delivery_method = :smtp
