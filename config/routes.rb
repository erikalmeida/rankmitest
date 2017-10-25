Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get 'departamentos/all', to: 'departamentos#consultar' 

  post 'departamentos/save', to: 'departamentos#save' 

  post 'departamentos/update', to: 'departamentos#update' 

  get 'departamentos/show',  to: 'departamentos#show'

end
