class CreateWitches < ActiveRecord::Migration[5.1]
  def change
    create_table :witches do |t|
      t.string :name
      t.string :description
      t.string :img_url
      t.string :img_url
      t.integer :knowledge
      t.integer :cuteness
      t.integer :quickness
      t.integer :patience
      t.string :favorite_familar
      t.string :favorite_element

      t.timestamps
    end
  end
end
