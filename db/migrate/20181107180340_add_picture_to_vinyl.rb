class AddPictureToVinyl < ActiveRecord::Migration[5.2]
  def change
    add_column :vinyls, :picture, :string
  end
end
