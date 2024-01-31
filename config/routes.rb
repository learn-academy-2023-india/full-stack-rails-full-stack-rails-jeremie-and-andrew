Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

 get '/blogs', to: 'blog#index', as: 'blogs'
 
 get '/blogs/new', to: 'blogs#new', as: 'new_blog'

 get '/blogs/:id', to: 'blogs#show', as: 'blog'
 
 post 'blogs', to: 'blogs#create'

end

