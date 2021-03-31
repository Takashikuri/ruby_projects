class Rename < ActiveRecord::Migration[5.2]
  def change
    rename_column :topics, :discription, :description
  end
end
