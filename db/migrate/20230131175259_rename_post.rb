class RenamePost < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :user_id, :developer_user_id
    change_column  :posts, :developer_user_id , :integer  , after: :id
  end
end
