class CreateRtweets < ActiveRecord::Migration[6.1]
  def change
    create_table :rtweets do |t|

      t.timestamps
    end
  end
end
