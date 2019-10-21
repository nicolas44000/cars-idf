class PagesController < ApplicationController
  def index
    @contact = Contact.new
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactsMailer.contact_email(@contact).deliver_now
      flash[:success] = "votre demande nous à bien été envoyé."
      redirect_to root_path(anchor: 'contact')
    else
      redirect_to root_path(anchor: 'contact'), flash: {error: @contact.errors.full_messages.join(', ')} 
    end
  end

  private 
 
  def contact_params
    params.require(:contact).permit(
      :subject,
      :name,
      :email,
      :message,
      :legal_notice
    )
  end
end
