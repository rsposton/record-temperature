Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :readings
    end
  end


  match ':controller(/:action(/:id))', :via => [:get, :post]

  root to: 'visitors#index'
end
