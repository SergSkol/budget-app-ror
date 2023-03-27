class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :groups
  has_many :payments

  validates :name, presence: true
  validates :email, presence: true

  def admin?
    role == 'admin'
  end
end
