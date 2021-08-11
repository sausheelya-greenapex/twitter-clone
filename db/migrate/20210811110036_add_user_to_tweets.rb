class AddUserToTweets < ActiveRecord::Migration[6.1]
  def change
    add_reference :tweets, :user, null: false, foreign_key: true
    add_column :tweets, :post, :text
  end
end
