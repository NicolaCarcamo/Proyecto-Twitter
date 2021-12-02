class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.integer :likecounter
      t.integer :retweetcounter

      t.timestamps
    end
  end
end
