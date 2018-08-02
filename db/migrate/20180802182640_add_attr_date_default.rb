class AddAttrDateDefault < ActiveRecord::Migration[5.1]
  def change
    change_column_default :profits, :date, Date.current
  end
end
