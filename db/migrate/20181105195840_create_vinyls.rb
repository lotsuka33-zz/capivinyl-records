class CreateVinyls < ActiveRecord::Migration[5.2]
  def change
    create_table :vinyls do |t|
      t.string :album
      t.integer :year
      t.string :artist
      t.text :description
      t.string :genre
      t.boolean :available
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
