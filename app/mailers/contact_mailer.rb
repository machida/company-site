class ContactMailer < ActionMailer::Base
  default :from => "noreply@youdomain.dev"
  default :to => "you@youremail.dev"

  def new_contact(contact)
    @contact = contact
    mail(:subject => "[YourWebsite.tld] #{contact.subject}")
  end
end
