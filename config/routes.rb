Ticketee::Application.routes.draw do
  devise_for :users
  resources :projects
  
  root 'dashboard#index'

end
