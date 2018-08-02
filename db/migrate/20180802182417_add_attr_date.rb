class AddAttrDate < ActiveRecord::Migration[5.1]
  def change
    add_column :profits, :date, :datetime
  end
end
