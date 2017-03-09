class Role < ApplicationRecord
  be_readonly
  has_many :role_users
  has_many :roles, through: :role_users
end
