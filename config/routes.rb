Rails.application.routes.draw do
  
  
  resources :notices, path: 'noticias-adfego',path_names: {new: "novo", edit: "editar"} do
    resources :file_uploads_notice, only: [:new, :create, :destroy]
  end
  resources :progresses, path: 'progressos-de-cotacao-eletronica',path_names: {new: "novo", edit: "editar"}
  resources :preaches, path: 'cotacao-eletronica',path_names: {new: "novo", edit: "editar"} do
    resources :file_uploads_preach, only: [:new, :create, :destroy]
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'admin/index'
  devise_for :users
  resources :users
  resources :vacancies, path: 'vagas-de-emprego',path_names: {new: "novo", edit: "editar"}
  resources :companies, path: 'empresas',path_names: {new: "novo", edit: "editar"}
  
  get 'institucional/adfego', to: 'institutional#adfego'
  get 'institucional/diretoria', to: 'institutional#board'
  get 'institucional/convenios', to: 'institutional#covenants'
  get 'institucional/estatuto', to: 'institutional#statute'
  get 'institucional/codigo-de-etica', to: 'institutional#code_of_ethics'
  get 'informativo/perguntas-frequentes', to: 'informative#faq'
  get 'doar/doe', to: 'donate#give'
  
  
  get 'home/index'
  root to: 'home#index'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
