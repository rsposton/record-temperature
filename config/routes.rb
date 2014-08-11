Rails.application.routes.draw do
  get 'graphs/index'

  namespace :api do
    resources :readings
  end


  match ':controller(/:action(/:id))', :via => [:get, :post]

  root to: 'visitors#index'
end
