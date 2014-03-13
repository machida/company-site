class ContactMailer < ActionMailer::Base
  default :from => ENV["NEW_CONTACT_FROM"]
  default :to => ENV["NEW_CONTACT_TO"]

  def new_contact(contact)
    @contact = contact
    mail(:to => ENV["NEW_CONTACT_TO"], :subject => "#{contact.subject}")
  end
end
