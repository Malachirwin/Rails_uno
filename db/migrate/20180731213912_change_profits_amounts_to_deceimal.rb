class ChangeProfitsAmountsToDeceimal < ActiveRecord::Migration[5.1]
  def change
    change_column :profits, :dozens_bought, :decimal{10,2}
    change_column :profits, :amount, :decimal{10,2}
  end
end
