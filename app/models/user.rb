class User < ApplicationRecord
  has_many :favorites, dependent: :destroy

  has_secure_password

  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 }, format: { with: /<regular expression>/ }, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }

  before_validation { email.downcase! }

end
