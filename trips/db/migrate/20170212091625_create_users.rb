class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :gender
      t.string :email
      t.string :phone
      t.string :car_type
      t.string :drive_level

      t.timestamps
    end
  end
end
