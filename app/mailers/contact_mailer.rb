class ContactMailer < ActionMailer::Base
  default :from => Settings.new_contact.from
  default :to => Settings.new_contact.to

  def new_contact(contact)
    @contact = contact
    mail(:to => Settings.new_contact.to, :subject => "#{contact.subject}")
  end
end
