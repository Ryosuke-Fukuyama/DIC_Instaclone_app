class User < ApplicationRecord
  has_many :pictures
  has_many :favorites, dependent: :destroy

  mount_uploader :image, ImageUploader

  has_secure_password

  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }

  before_validation { email.downcase! }

end
