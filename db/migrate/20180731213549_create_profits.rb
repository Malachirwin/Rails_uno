class CreateProfits < ActiveRecord::Migration[5.1]
  def change
    create_table :profits do |t|
      t.integer :amount
      t.integer :dozens_bought
      t.string :location

      t.timestamps
    end
  end
end
