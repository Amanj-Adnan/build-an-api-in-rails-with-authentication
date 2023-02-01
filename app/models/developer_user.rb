class DeveloperUser < ApplicationRecord
  has_secure_password
  has_many :posts, dependent: :destroy
  has_encrypted :private_api_key, key: Rails.application.credentials.lockbox_key
  blind_index :private_api_key

  before_create :set_private_api_key
  validates :name , :password_digest , :email , uniqueness: true, presence: true

  private

  def set_private_api_key
    self.private_api_key = SecureRandom.hex if self.private_api_key.nil?
  end
end
