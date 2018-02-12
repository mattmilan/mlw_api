class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.references :spellbook, foreign_key: true
      t.string :name
      t.string :description
      t.string :img_url
      t.string :effect

      t.timestamps
    end
  end
end
