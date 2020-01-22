class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :latitude
      t.string :longitude
      t.string :rock_types
    end
  end
end
