class CreateHoursAndLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :hours_and_locations do |t|
      t.string :content

      t.timestamps
    end
  end
end
