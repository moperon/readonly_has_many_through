class User < ApplicationRecord
  has_many :role_users
  has_many :roles, through: :role_users
end
