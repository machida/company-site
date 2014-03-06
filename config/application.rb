require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module CompanySite
  class Application < Rails::Application

    # config/locales以下のどの階層のディレクトリも読み込ませるようにしておく
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :ja
    config.encoding = "utf-8"
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    config.active_support.escape_html_entities_in_json = true

    config.after_initialize do
      config.action_mailer.smtp_settings = {
        :address              => "smtp.gmail.com",
        :port                 => 587,
        :domain               => Settings.action_mailer.domain,
        :user_name            => Settings.action_mailer.user_name,
        :password             => Settings.action_mailer.password,
        :authentication       => :plain,
        :enable_starttls_auto => true
      }

      config.action_mailer.default_url_options = {
        :host => Settings.action_mailer.host
      }
    end
    config.compass.require "rgbapng"
    config.compass.require 'SassyLists'

    config.to_prepare do
      Devise::SessionsController.layout "staffs_application"
      Devise::RegistrationsController.layout proc{ |controller| staff_signed_in? ? "staffs_application" : "sign_in_application" }
      Devise::ConfirmationsController.layout "staffs_application"
      Devise::UnlocksController.layout "staffs_application"
      Devise::PasswordsController.layout "staffs_application"
    end

  end
end
