class Card < ApplicationRecord
  belongs_to :user

  has_many :invoices

  enum bank: [ :itau, :santander, :bradesco, :nubank, :caixa_economica, :banco_do_brasil ]

  validates :name, presence: true
  validates :bank, presence: true


end
