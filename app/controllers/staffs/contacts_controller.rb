class Staffs::ContactsController < StaffsController

  def index
    @contacts = Contact
  end

  def show
    @contact = Contact.find(params[:id])
  end

end