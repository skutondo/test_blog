class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
	has_secure_password # This makes the password a digest and forces you to enter it twice.
end