Rails.application.routes.draw do
  resources :pets

  resources :people

  resources :addresses
end
