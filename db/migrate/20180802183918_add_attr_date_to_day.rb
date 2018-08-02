class AddAttrDateToDay < ActiveRecord::Migration[5.1]
  def change
    add_column :days, :date, :datetime
  end
end
