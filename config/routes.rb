Rails.application.routes.draw do
 
  resources :articles do
  resources :drills
   end
 
  root 'welcome#index'
end
