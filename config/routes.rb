Rails.application.routes.draw do
  devise_for :users
  root controller: :dashboards, action: :index
  resources :kindergartens, only: [:update]  
end
