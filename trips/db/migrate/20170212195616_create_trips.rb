class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.string :from
      t.string :to
      t.string :date
      t.string :price
      t.string :number_of_seats

      t.timestamps
    end
  end
end
