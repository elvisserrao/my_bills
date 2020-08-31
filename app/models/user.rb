class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable, :trackable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :age, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 18 }

  has_many :cards
  has_many :invoices

end