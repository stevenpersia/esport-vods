Rails.application.routes.draw do
  resources :articles
  resources :supports
  get 'legendary/index'
  get 'favorite/index'
  get 'welcome/index'
  get 'mentionslegales' => 'welcome#mentionslegales'
  get 'cookies' => 'welcome#cookies'
  resources :games
  resources :matches
  resources :teams
  resources :categories
  resources :events
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
