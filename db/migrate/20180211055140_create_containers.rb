class CreateContainers < ActiveRecord::Migration[5.1]
  def change
    create_table :containers do |t|
      t.string :name
      t.string :description
      t.string :img_url
      t.string :element
      t.string :origin

      t.timestamps
    end
  end
end
