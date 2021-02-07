Rails.application.routes.draw do
  
  get 'informativo/faq'
  get 'institucional/sobre'
  get 'institucional/diretoria'
  get 'institucional/convenio'
  get 'institucional/estatuto'
  get 'institucional/codigo-de-etica'

  get 'home/index'
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
