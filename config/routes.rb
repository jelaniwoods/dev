Rails.application.routes.draw do
  resources :posts
  root "application#home"
end
