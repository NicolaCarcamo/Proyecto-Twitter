class AddRtToTweet < ActiveRecord::Migration[6.1]
  def change
    add_column :tweets, :rt, :integer
  end
end
