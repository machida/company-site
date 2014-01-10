class ContactMailer < ActionMailer::Base
  default :from => "sample@prototype-beta.com"
  def sent(contact)
    @contact = contact
    mail(:to => @contact.email, :subject => 'お問い合わせありがとうございました。')
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      ContactMailer.sent(@contact).deliver
      redirect_to :action => :index, :notice => 'お問い合わせありがとうございました。'
    else
      render :action => :index, :alert => 'お問い合わせに不備があります。'
    end
  end
end
