Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'users/show'
  get 'users/edit'
  resources :books, only:[:index,:new,:create,:show,:edit,:update,:destroy]
  post 'books' => 'books#create'
  get '/top' => 'homes#top'
  get "homes/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
