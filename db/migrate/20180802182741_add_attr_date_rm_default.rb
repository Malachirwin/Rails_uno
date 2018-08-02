class AddAttrDateRmDefault < ActiveRecord::Migration[5.1]
  def change
    change_column_default :profits, :date, 0
  end
end
