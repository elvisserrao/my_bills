class Invoice < ApplicationRecord
  belongs_to :user
  belongs_to :card, optional: true

  enum category: [ :luz, :telefone, :agua, :internet, :alimentacao, :fatura, :vestimenta, :outros]

  validates :name, presence: true
  validates :category, presence: true
  validates :value, presence: true
  validates :due_date, presence: true
  validates :user_id, presence: true

end
