class CreateDays < ActiveRecord::Migration[5.1]
  def change
    create_table :days do |t|
      t.float :total_profit
      t.float :total_dozens_sold
      t.string :location

      t.timestamps
    end
  end
end
