class Posts < ActiveRecord::Migration[6.1]
  def self.up
    create_table :posts do |t|

      t.column :content, :string, :limit => 1000, :null => false
      t.column :posted_at, :timestamp

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
 end
end
