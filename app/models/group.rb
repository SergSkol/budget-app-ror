class Group < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id', class_name: 'User'
  has_many :group_payments, dependent: :destroy
  has_many :payments, through: :group_payments, dependent: :destroy

  validates :name, presence: true

  def total_amount
    payments.sum(:amount)
  end
end
