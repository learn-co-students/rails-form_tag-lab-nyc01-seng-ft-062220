Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index,:new,:show,:create]
  
  #get '/students/:id', to: 'students#show', as: 'student'

  get '/students/:id/new', to: 'students#new_with_id', as: :new_with_id
end
