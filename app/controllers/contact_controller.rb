class ContactController < ApplicationController

  def new
    @contact = Contact.new
    add_breadcrumb "home", root_path
    add_breadcrumb "contact", contact_path
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.valid?
      ContactMailer.new_contact(@contact).deliver
      redirect_to(root_path, :notice => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end

end