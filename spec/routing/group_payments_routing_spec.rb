require 'rails_helper'

RSpec.describe GroupPaymentsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/group_payments').to route_to('group_payments#index')
    end

    it 'routes to #new' do
      expect(get: '/group_payments/new').to route_to('group_payments#new')
    end

    it 'routes to #show' do
      expect(get: '/group_payments/1').to route_to('group_payments#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/group_payments/1/edit').to route_to('group_payments#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/group_payments').to route_to('group_payments#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/group_payments/1').to route_to('group_payments#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/group_payments/1').to route_to('group_payments#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/group_payments/1').to route_to('group_payments#destroy', id: '1')
    end
  end
end
