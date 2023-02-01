class CreateDeveloperUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :developer_users do |t|
      t.string :private_api_key_bidx , unique:true ,index:true
      t.string :name
      t.string :email
      t.string :password
      t.text :private_api_key_ciphertext
      t.timestamps
    end
  end
end
