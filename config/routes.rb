Rails.application.routes.draw do
  resources :pedidos
  devise_for :usuarios
  resources :usuarios
  resources :produtos do
    resources :comentarios, except: [:index, :show]
  end
  resources :comentarios do
    resources :comentarios, except: [:index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
end
