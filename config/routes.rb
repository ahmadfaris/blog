Rails.application.routes.draw do
  root 'landing#index'
  get  'resume'  => 'landing#resume'
end
