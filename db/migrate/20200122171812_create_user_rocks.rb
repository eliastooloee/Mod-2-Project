class CreateUserRocks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_rocks do |t|
      t.integer :user_id
      t.integer :rock_id
    end
  end
end
