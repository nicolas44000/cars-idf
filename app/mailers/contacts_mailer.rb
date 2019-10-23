class ContactsMailer < ApplicationMailer
    default :from => 'cars-idf@outlook.fr'
 
  def contact_email(contact)
    @contact = contact
    mail( :to => 'cars-idf@outlook.fr',
    :subject => 'vtc' )
  end
end
