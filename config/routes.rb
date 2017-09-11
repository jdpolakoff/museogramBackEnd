Rails.application.routes.draw do
  # nested route to allow filtering of artwork by museums
  # and support of pagination
  resources :museums do
    resources :artworks
  end
  resources :artworks
  resources :reviews

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
