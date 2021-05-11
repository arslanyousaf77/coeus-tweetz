class AddDummyPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :posted_at, :timestamp
  end
end
