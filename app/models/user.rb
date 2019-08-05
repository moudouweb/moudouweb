class User < ApplicationRecord
  authenticates_with_sorcery!
  validates :email, uniqueness: true
end
