class AddColumnDayId < ActiveRecord::Migration[5.1]
  def change
    add_column :profits, :day_id, :integer
  end
end
