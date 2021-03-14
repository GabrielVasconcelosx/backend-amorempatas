Rails.application.routes.draw do
  resources :application, defaults: {format: :json}
  root 'application#status'

  resources :pets do
  end
end
