Rails.application.routes.draw do
  root to: 'home#index'
  post '/', to: 'home#search'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
