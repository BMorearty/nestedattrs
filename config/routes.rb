Rails.application.routes.draw do
  root :to => redirect('/people')
  resources :pets
  resources :people
  resources :addresses
end
