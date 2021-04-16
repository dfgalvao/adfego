Rails.application.routes.draw do
  
  resources :notices
  resources :progresses
  resources :preaches do
    resources :file_uploads, only: [:new, :create, :destroy]
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'admin/index'
  devise_for :users
  resources :users
  resources :vacancies
  resources :companies
  get 'informativo/faq'
  get 'institucional/sobre'
  get 'institucional/diretoria'
  get 'institucional/convenio'
  get 'institucional/estatuto'
  get 'institucional/codigo-de-etica'
  get 'doar/doe'
  
  
  get 'home/index'
  root to: 'home#index'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
