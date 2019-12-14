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
  def request_contact

    name = params[:name]
    email = params[:email]
    message = params[:message]
    if email.blank?
      flash[:notice] = I18n.t('contact.request_contact.email_not_sent')
    else
    ContactMailer.contact_email(email, name, message).deliver_now
    flash[:notice] = I18n.t('contact.request_contact.email_sent')
  end
  end
end
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
