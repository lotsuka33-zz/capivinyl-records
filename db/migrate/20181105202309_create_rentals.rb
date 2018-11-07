class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.references :vinyl, foreign_key: true
      t.references :user, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :owner_rating
      t.integer :borrower_rating

      t.timestamps
    end
  end
end
