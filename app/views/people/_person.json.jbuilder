json.extract! person, :id, :firstname, :lastname, :age, :is_climber, :created_at, :updated_at
json.url person_url(person, format: :json)
