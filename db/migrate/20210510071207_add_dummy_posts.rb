class AddDummyPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :posted_at, :timestamp

    Post.create :content => "Hello world, I am Arslan.", :user_id => 1
    Post.create :content => "Hello world, I am Ahmad.", :user_id => 2
    Post.create :content => "Hello world, I am Daniyal.", :user_id => 3

  end
end
