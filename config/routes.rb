Rails.application.routes.draw do
  namespace :api do
    resources :readings
  end


  match ':controller(/:action(/:id))', :via => [:get, :post]

  root to: 'visitors#index'
end
