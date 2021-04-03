class User < ApplicationRecord
    validates :name, presence: true,
                     length: { maximum: 15 }
    validates :email, presence: true,
                      format: { with: /\A[a-z\d+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    validates :password, presence: true,
                         length: { minimum: 8, maximum: 32 },
                         format: { with: /\A[a-z0-9]+\z/i }
    validates :password_confirmation, presence: true,
                                      length: { minimum: 8, maximum: 32 },
                                      format: { with: /\A[a-z0-9]+\z/i }
    has_secure_password
    
    has_many :topics
    has_many :favorites
    has_many :favorite_topics, through: :favorites, source: "topic"
end