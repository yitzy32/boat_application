class CreateBoats < ActiveRecord::Migration[6.1]
  def change
    create_table :boats do |t|
      t.string :title
      t.string :color
      t.integer :capacity
      t.integer :price

      t.timestamps
    end
  end
end
