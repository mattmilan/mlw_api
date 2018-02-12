json.extract! ingredient, :id, :recipe_id, :container_id, :name, :tooltip, :description, :img_url, :element, :origin, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
