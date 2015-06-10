Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]

  namespace :admin do
    resources :categories, only: [:index]   #added namespace, Error: uninitialized constant Admin, b/c of namespace it thinks there's a folder called admin (make one within controllers. error of Admin::categories.... make categories_controllers.rb file)
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
