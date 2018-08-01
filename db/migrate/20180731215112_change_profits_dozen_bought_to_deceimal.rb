class ChangeProfitsDozenBoughtToDeceimal < ActiveRecord::Migration[5.1]
  def change
    change_column :profits, :dozens_bought, :decimal, :precision => 10, :scale => 1
    change_column :profits, :amount, :decimal, :precision => 10, :scale => 1
  end
end
