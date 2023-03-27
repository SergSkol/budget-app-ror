Rails.application.routes.draw do
  devise_for :users

  resources :groups, only: [:index, :new, :create, :show, :destroy, :edit, :update] do
    resources :payments, only: [:index, :new, :create, :show, :destroy, :edit]
  end

  devise_scope :user do
    unauthenticated do
      root 'home#index', as: :unauthenticated_root
    end
    
    authenticated :user do
      root 'groups#index', as: :authenticated_root
    end
  end
end
