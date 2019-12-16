# Defines the default address to which the emails will be
# directed to and the email address that appears to be
# sending them. The link to the mailer layout is also
# defined here.

class ApplicationMailer < ActionMailer::Base
  default to: 'jk00687@surrey.ac.uk', from: 'messages@filmreviews.com'
  layout 'mailer'
end
