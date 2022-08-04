Rails.application.routes.draw do


  resources :categories
  resources :sub_categories
  get '/categories/:id', to: 'categories#category_posts'


  get 'page/home'
  resources :posts do
    resources :comments
  end
  devise_for :users
  root 'page#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
