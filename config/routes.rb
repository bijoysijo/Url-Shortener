Rails.application.routes.draw do
  resources :urls, only: [:index, :new, :create, :show]
  root 'urls#index'
  get ':shortened_url', to: 'urls#redirect'
  # resources :brands, only: [:index, :show] do
  #   resources :products, only: [:index, :show]
  # end
  # resources :photos
  # resource :photo
  get 'photos/:id', to: 'photos#show', defaults: { format: 'jpg' }

  # resource :basket, only: [:show, :update, :destroy]

  # resolve("Basket") { route_for(:basket) }
end
