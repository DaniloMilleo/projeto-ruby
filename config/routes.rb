Rails.application.routes.draw do
  get 'home/listar'
  devise_for :users
  resources :places
  root to: "home#index"
  post "rating", to: "ratings#rate"
  get '/listar/:tipo', to: 'home#listar'
  get '/listar/', to: 'home#listar'
  get '/categorias', to: 'home#categorias'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
