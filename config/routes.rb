Rails.application.routes.draw do
  
  get 'jobs/jobs'
  get 'home/index'
  get 'about/about'
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
