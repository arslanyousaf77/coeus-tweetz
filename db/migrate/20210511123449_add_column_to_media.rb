class AddColumnToMedia < ActiveRecord::Migration[6.1]
  def change
    add_column :media, :fileName, :text
  end
end
