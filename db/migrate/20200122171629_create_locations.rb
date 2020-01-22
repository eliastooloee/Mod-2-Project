class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :coordinates
      t.string :rock_types
    end
  end
end
