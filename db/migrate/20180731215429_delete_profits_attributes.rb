class DeleteProfitsAttributes < ActiveRecord::Migration[5.1]
  def change
    remove_column :profits, :dozens_bought
    remove_column :profits, :amount
    add_column :profits, :dozens_bought, :decimal
    add_column :profits, :amount, :decimal
  end
end
