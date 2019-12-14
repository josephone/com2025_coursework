class Film < ApplicationRecord
    validates :Film_title, :description, :Length, presence: true 
end
