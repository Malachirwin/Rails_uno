class ChangeProfitsAttributesToFloat < ActiveRecord::Migration[5.1]
  def change
    change_column :profits, :dozens_bought, :float
    change_column :profits, :amount, :float
  end
end
