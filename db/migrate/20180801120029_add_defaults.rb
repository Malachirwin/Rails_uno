class AddDefaults < ActiveRecord::Migration[5.1]
  def change
    change_column_default :days, :total_profit, 0
    change_column_default :days, :total_dozens_sold, 0
    change_column_default :profits, :amount, 0
    change_column_default :profits, :dozens_bought, 0
  end
end
