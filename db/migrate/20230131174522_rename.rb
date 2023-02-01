class Rename < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :user_id_id, :user_id
    change_column  :posts, :user_id , :integer  , after: :id

    end
end
