class User < ApplicationRecord
  has_secure_password
  validates :name, length: { minimum: 2 }
    validates :email, presence: true, uniqueness: true

  has_and_belongs_to_many :images
end
