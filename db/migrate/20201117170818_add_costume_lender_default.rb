class AddCostumeLenderDefault < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :lender, :boolean, default: false
  end
end
