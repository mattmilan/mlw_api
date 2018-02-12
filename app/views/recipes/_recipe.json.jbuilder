json.extract! recipe, :id, :spellbook_id, :name, :description, :img_url, :effect, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
