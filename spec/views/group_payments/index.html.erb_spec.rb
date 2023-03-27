require 'rails_helper'

RSpec.describe 'group_payments/index', type: :view do
  before(:each) do
    assign(:group_payments, [
             GroupPayment.create!,
             GroupPayment.create!
           ])
  end

  it 'renders a list of group_payments' do
    render
  end
end
