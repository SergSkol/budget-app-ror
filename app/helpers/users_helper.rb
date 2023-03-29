module UsersHelper
  def total_user_amount
    Payment.where(author_id: current_user).sum(:amount)
  end
end
