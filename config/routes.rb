Rails.application.routes.draw do
  
  namespace :api do 
    namespace :v1 do 
      resources :responses
      resources :essays
      resources :users
      get '/autologin', to: 'auth#create'
      post 'login', to: 'auth#login'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    end 
  end
  
end
