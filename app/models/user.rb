class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  enum :role, { user: 0, insider: 1, moderator: 2, admin: 3 }

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
