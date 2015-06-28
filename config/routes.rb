Rails.application.routes.draw do
  devise_for :users
  root 'landing#index'
  get  'resume'  => 'landing#resume'
  get  'about'   => 'landing#aboutme'
  get  'contact'   => 'landing#contact'
  
  resources :posts do
  	resources :comments
  end
end
