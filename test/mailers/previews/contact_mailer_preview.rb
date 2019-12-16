# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer

# Creates a precursor set of parameters that will be used to depict a
# preview and ensure that the correct validations are being used when
# it comes to inputting real values


class ContactMailerPreview < ActionMailer::Preview
  def contact_email
  ContactMailer.contact_email("matthew.casey@gmail.com",
  "Matthew Casey", "Hello")
  end
end
