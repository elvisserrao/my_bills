class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable, :trackable

  validates_presence_of :first_name, on: :create, message: "não pode ficar em branco"
  validates_presence_of :last_name, on: :create, message: "não pode ficar em branco"
  validates_presence_of :age, on: :create, message: "não pode ficar em branco"

end