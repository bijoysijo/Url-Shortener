Rails.application.routes.draw do
  resources :url, only: [:index, :new, :create, :show]
end
