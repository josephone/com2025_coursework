class ContactU < ApplicationRecord

  # Defines the validation constraints of the fields
  # which the user will provide an input to. This includes
  # the use of RegEx for the email field as well as a check
  # to see whether the user has inputted anything

  validates :name, :email, :message, presence: true
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message

end
