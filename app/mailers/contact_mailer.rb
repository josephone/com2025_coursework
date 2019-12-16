# Contains the method that will be used to send the email
# which is linked to a view

class ContactMailer < ApplicationMailer

  # Obtains the specific parameters from the users input
  def contact_email(email, name, message)
    @name = name
    @email = email
    @message = message
mail cc: @email
end

end
