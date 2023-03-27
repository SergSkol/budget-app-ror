class Payment < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id', class_name: 'User'
  has_many :group_payments

  validates :name, presence: true
  validates :amount, numericality: { greater_than: 0 }
end
