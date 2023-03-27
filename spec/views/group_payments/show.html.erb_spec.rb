require 'rails_helper'

RSpec.describe 'group_payments/show', type: :view do
  before(:each) do
    assign(:group_payment, GroupPayment.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
