class CreateRockLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :rock_locations do |t|
      t.integer :rock_id
      t.integer :location_id
    end
  end
end
