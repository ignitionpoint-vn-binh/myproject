Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/contact'
  root 'application#hello'
  # For detailson the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
