class AddDataToPost < ActiveRecord::Migration[6.1]
  def change
    Post.create :content => "Hello guys, I am Arslan", :user_id => "1"
    Post.create :content => "Hello guys, I am Ahmad", :user_id => "2"
    Post.create :content => "Hello guys, I am Daniyal", :user_id => "3"

  end
end
