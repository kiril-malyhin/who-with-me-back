class ChangeUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :drive_level
    remove_column :users, :car_type

    add_column :trips, :drive_level, :string
    add_column :trips, :car_type, :string
  end
end
