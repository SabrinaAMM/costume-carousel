class AddLenderToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :lender, :boolean
  end
end
