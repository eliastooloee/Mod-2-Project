class CreateRocks < ActiveRecord::Migration[6.0]
  def change
    create_table :rocks do |t|
      t.string :nick_name
      t.string :category
      t.string :minerals
      t.string :outcrop
    end
  end
end
