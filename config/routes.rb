Rails.application.routes.draw do
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'promotions#index'

  resources :promotions
    # collection do
    #   get 'search', to: "promotions#search"
    # end
  # end

  resources :users do
    resources :orders do
      resources :orderlines do
        member do
          post 'create_order'
        end
      end
    end
  end

  resources :sellers do
    resources :promotions
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


