class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :description
      t.string :img_url
      t.string :request
      t.string :reward

      t.timestamps
    end
  end
end
