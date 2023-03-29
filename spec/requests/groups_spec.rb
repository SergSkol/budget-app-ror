require 'rails_helper'

RSpec.describe '/groups', type: :request do
  include Devise::Test::IntegrationHelpers

  describe 'GET /new' do
    before do
      @user = User.create(name: 'User', email: 'user@gmail.com', password: '123456', password_confirmation: '123456')
      sign_in @user
      get new_group_path
    end

    it 'response to html' do
      expect(response.content_type).to include 'text/html'
    end
  end

  describe 'GET /index' do
    before do
      @group = Group.first
      get group_url(@group.id)
    end

    it 'response to html' do
      expect(response.content_type).to include 'text/html'
    end
  end
end
