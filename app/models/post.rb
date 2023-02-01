class Post < ApplicationRecord
  belongs_to :developer_user

  validates :title, :body, presence: true
end
