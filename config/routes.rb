Rails.application.routes.draw do
  
    devise_for :members    
    
    root 'home#index'
    get '/home', to: 'home#index'
    get '/area', to: 'home#area'
    get '/category', to: 'home#category'
    get '/part', to: 'home#part'
    get '/advertisement', to: 'home#advertisement'
    get '/gallery', to: 'home#gallery-category'
    get '/gallery-category', to: 'home#gallery-category'
    get '/gallery-subject', to: 'home#gallery-subject'
    get '/gallery-part', to: 'home#gallery-part'
    #get '/advertisement', :to => redirect('/tattoo/advertisement.html')
    
    #partners
    get '/partner1', to: 'partners#partner1'
    get '/partner2', to: 'partners#partner2'
    get '/partner3', to: 'partners#partner3'
    get '/partner4', to: 'partners#partner4'
    get '/partner5', to: 'partners#partner5'
    get '/partner6', to: 'partners#partner6'
    get '/partner7', to: 'partners#partner7'
    
    
    get '/user', to: 'user#index'
    post '/register', to: 'user#register'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    
    #로그인
    #resources :sessions, only: [:new, :create, :destroy]
    # get 'sessions/new'
    #get '/login', to: 'sessions#new'
    #post '/login', to: 'sessions#create'
    #post '/logout', to: 'sessions#destroy'
    
    
end
