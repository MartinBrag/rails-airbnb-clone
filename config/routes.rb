Rails.application.routes.draw do
  devise_for :users
  root to: 'promotions#index'

  resources :promotions
    # collection do
    #   get 'search', to: "promotions#search"
    # end
  # end

  resources :buyers

  resources :orders do
      resources :orderlines
  end

  resources :sellers do
    resources :promotions
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
