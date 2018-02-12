class CreateFamiliars < ActiveRecord::Migration[5.1]
  def change
    create_table :familiars do |t|
      t.string :name
      t.string :tooltip
      t.string :description
      t.string :img_url
      t.string :element
      t.string :origin
      t.string :speed
      t.string :memory
      t.string :disicpline
      t.string :distracted_by

      t.timestamps
    end
  end
end
