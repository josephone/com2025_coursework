class ContactMailer < ApplicationMailer
  def contact_email(email, name, message)
    @name = name
    @email = email
    @message = message
mail cc: @email
end

end
