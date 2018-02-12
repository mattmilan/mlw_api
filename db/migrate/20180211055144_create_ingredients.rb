class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.references :recipe, foreign_key: true
      t.references :container, foreign_key: true
      t.string :name
      t.string :tooltip
      t.string :description
      t.string :img_url
      t.string :element
      t.string :origin

      t.timestamps
    end
  end
end
