Rails.application.routes.draw do
  root  to: 'static_pages#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
	delete '/logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact'
  # For detailson the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
end
