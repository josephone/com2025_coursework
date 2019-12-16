# Defines the validation constraints of the fields
# which the user will provide an input to. For examaple
# the length of the film must be an integer

class Film < ApplicationRecord
    validates :Film_title, :description, :Length, presence: true

    # validates :Length,    format: { with: /\A\d+\z/, message: "must be an integer." }
end
