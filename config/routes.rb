Rails.application.routes.draw do
  devise_for :users

  resources :groups
  resources :payments do
    resources :group_payments
  end

  # root 'home#index'

  devise_scope :user do
    unauthenticated do
      root 'home#index', as: :unauthenticated_root
    end
    
    authenticated :user do
      root 'groups#index', as: :authenticated_root
    end
  end
end
