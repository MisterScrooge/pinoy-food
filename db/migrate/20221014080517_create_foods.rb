class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :food
      t.string :rating

      t.timestamps
    end
  end
end
