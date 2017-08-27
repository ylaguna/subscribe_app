class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :rememberable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :timeoutable, :trackable, :validatable
end
