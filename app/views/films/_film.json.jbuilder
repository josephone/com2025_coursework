json.extract! film, :id, :Film_title, :description, :Length, :Review, :created_at, :updated_at
json.url film_url(film, format: :json)
