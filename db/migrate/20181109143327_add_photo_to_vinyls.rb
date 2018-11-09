class AddPhotoToVinyls < ActiveRecord::Migration[5.2]
  def change
    add_column :vinyls, :photo, :string
  end
end
