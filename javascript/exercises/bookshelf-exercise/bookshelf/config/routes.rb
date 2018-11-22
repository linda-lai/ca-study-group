Rails.application.routes.draw do
  resources :authors
  resources :books, defaults: {format: :json}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
