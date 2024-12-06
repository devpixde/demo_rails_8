json.extract! image_example, :id, :body, :image, :created_at, :updated_at
json.url image_example_url(image_example, format: :json)
json.image url_for(image_example.image)
