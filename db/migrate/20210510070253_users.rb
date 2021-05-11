class Users < ActiveRecord::Migration[6.1]
  def self.up
    create_table :users do |t|
      t.column :username, :string, :limit => 32, :null => false
      t.column :password, :string, :limit => 100, :null => false
      t.column :phone, :string, :null => true
      
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
