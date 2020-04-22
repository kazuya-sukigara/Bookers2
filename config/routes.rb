Rails.application.routes.draw do

devise_for :users


  root 'homes#top'
  get 'home/about' => 'homes#about', as: 'home'
  
  resources :users, only:[:show,:edit,:update,:index]
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

end

