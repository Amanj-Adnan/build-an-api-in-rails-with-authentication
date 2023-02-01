class ChangeColNameOfUser < ActiveRecord::Migration[7.0]
  def change
    rename_column :developer_users , :password , :password_digest
  end
end
