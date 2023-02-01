class AddRefrenceToPost < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :user_id, index: true
  end
end
