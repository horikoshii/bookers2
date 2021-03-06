Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :users, only:[:index,:show,:edit,:create,:new,:update]
  resources :books, only:[:index,:new,:create,:show,:edit,:update,:destroy]
  post 'books' => 'books#create'
  get "home/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end