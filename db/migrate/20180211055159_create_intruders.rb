class CreateIntruders < ActiveRecord::Migration[5.1]
  def change
    create_table :intruders do |t|
      t.string :name
      t.string :description
      t.string :img_url
      t.string :wants
      t.string :fears

      t.timestamps
    end
  end
end
