class AddDefaultPasswordValue < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :password, true
  end
end
