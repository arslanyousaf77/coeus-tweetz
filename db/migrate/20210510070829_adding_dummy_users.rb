class AddingDummyUsers < ActiveRecord::Migration[6.1]
  def change
   
      User.create :username => "Arslan", :password => "1234", :phone => "090078601"
      User.create :username => "Ahmad", :password => "1234", :phone => "090078602"
      User.create :username => "Daniyal", :password => "1234", :phone => "090078603"

  end
end
