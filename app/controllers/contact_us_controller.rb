class ContactUsController < ApplicationController

  # GET /contact_us
  # GET /contact_us.json
  def index
  end

  # GET /contact_us/1
  # GET /contact_us/1.json
  def show
  end

  # GET /contact_us/new
  def new
  end

  # GET /contact_us/1/edit
  def edit
  end

  # POST /contact_us
  # POST /contact_us.json

  # The following 'def' is used to post the values of the
  # contact form to the mailer without an SMTP server being
  # set up.


  def request_contact

    # Obtains the form values from the "params" hash and the
    # keys match according to the field names
    name = params[:name]
    email = params[:email]
    message = params[:message]

    # This selection statement ensures that an email address is
    # provided and shows an alert if we dont

    if email.blank?
      flash[:notice] = I18n.t('contact.request_contact.email_not_sent')
    else
      # Sends the email by calling the 'contact_email' subroutine
      # and passes the values submitted by the user in the form
    ContactMailer.contact_email(email, name, message).deliver_now

      # Shows the according alert
    flash[:notice] = I18n.t('contact.request_contact.email_sent')
  end
  end
end
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
