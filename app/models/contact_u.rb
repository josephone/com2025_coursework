class ContactU < ApplicationRecord

  validates :name, :email, :message, presence: true
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message

  #ContactMailer.contact_email(name, email, telephone, message).deliver_now

end
