class Admins::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id]) #contact_mailer.rbの引数を指定
    @contact.update(contact_params)
    
  #   if @contact.user_id.present?
  #     user = @contact.user
  #     ContactMailer.send_when_admin_reply(user, @contact).deliver
  #   else
  #     walker = @contact.walker
  #     ContactMailer.send_when_admin_reply2(walker, @contact).deliver
  #  end

    destination = {
      name: '',
      email: ''
    }
    if @contact.user_id.present?
      destination[:name] = @contact.user.nickname
      destination[:email] = @contact.user.email
    else
      destination.name = @contact.walker.nickname
      destination.email = @contact.walker.email
    end
    ContactMailer.send_when_admin_reply(destination, @contact).deliver
    redirect_to admins_contacts_path
  end

   private

    def contact_params
      params.require(:contact).permit(:reply,:title, :content, :user_id, :walker_id)
    end
end
