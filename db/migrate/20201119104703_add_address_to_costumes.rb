class AddAddressToCostumes < ActiveRecord::Migration[6.0]
  def change
    add_column :costumes, :address, :string
  end
end
