class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :rememberable and :omniauthable, :recoverable, :registerable
  devise :database_authenticatable, :timeoutable, :trackable, :validatable
end
