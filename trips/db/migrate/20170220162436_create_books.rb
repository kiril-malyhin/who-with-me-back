class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :trip, foreign_key: true
      t.integer :seats_count

      t.timestamps
    end
  end
end
