Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  resources :quotes
  resources :contacts, only: [:new, :create]
  get 'welcome/index'
  root 'welcome#index'
  get '*path' => redirect('/')
end
