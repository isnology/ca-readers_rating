json.extract! book, :id, :title, :description, :image_data, :rating, :created_at, :updated_at
json.url book_url(book, format: :json)
