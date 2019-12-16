# Utilises the 'Devise' gem in order to apply more
# meaningful field validations to the User model.

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates :email, :encrypted_password, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
