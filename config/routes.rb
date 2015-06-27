Rails.application.routes.draw do
  root 'landing#index'
  get  'resume'  => 'landing#resume'
  get  'about'   => 'landing#aboutme'
  get  'contact'   => 'landing#contact'
end
