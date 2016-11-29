Rails.application.routes.draw do
  root to: 'pages#home'
  resources :promotions
  resources :buyers do
    resources :orders do
      resources :orderlines
    end
  end

  resources :sellers do
    resources :promotions
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
