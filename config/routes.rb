Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      defaults format: :json do
        resources :posts, only: [:index, :create, :show, :update, :destroy]
      end
    end
  end

  get 'users/index' , to:"users#index"
  get 'user/edit' , to:"users#edit"
  post 'user/edit' , to:"users#update"

  root "sessions#new"
  post 'user/sign_in' , to:"sessions#create"

  get 'developer_users/new' , to:"registrations#new"
  post 'developer_users/new' , to:"registrations#create"
end
