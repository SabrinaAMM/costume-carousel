class CreateCostumes < ActiveRecord::Migration[6.0]
  def change
    create_table :costumes do |t|
      t.string :name
      t.string :size
      t.float :price_per_day
      t.string :category
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
