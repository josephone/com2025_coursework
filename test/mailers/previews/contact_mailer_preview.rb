# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def contact_email
  ContactMailer.contact_email("matthew.casey@gmail.com",
  "Matthew Casey", "Hello")
  end
end
