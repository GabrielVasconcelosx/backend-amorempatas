Rails.application.routes.draw do
  resources :pets, defaults: {format: :json}
  root 'welcome#index'
end
