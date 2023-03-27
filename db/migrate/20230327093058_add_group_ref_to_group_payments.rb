class AddGroupRefToGroupPayments < ActiveRecord::Migration[7.0]
  def change
    add_reference :group_payments, :group, null: false, foreign_key: true
  end
end
