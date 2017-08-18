Rails.application.routes.draw do
  resources :museums do
    resources :artworks
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
