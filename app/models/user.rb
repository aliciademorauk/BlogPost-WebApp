class User < ApplicationRecord
  # :confirmable, :lockable, :timeoutable, :trackable, :omniauthable, :recoverable
  devise :database_authenticatable, :registerable, :rememberable, :validatable
end
