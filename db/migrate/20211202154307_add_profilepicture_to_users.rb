class AddProfilepictureToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :profilepicture, :string
  end
end
