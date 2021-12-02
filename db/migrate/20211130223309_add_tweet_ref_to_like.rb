class AddTweetRefToLike < ActiveRecord::Migration[6.1]
  def change
    add_reference :likes, :tweet, null: false, foreign_key: true
  end
end
