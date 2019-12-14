class ApplicationMailer < ActionMailer::Base
  default to: 'jk00687@surrey.ac.uk', from: 'messages@filmreviews.com'
  layout 'mailer'
end
