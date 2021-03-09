Rails.application.routes.draw do
  resources :pets
  root 'welcome#index'
end
