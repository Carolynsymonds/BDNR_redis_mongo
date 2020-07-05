Rails.application.routes.draw do
  resources :feed_views
  resources :feeds
  resources :articles
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
