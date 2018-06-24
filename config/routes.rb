Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :scripts, except: [:new, :edit]
    resources :users, only: [:index, :show]

    post '/login', to: "sessions#create"
    get '/logout', to: "sessions#destroy"
  end
end
