Rails.application.routes.draw do
  root 'pages#index'
  resources :questions
  # resources :questions, only: [:index, :new, :edit, :create, :update, :destroy, :show]
  # get '/questions', to: 'questions#index'
  # get '/questions/new', to: 'questions#new'
  # get '/questions/:id/edit', to: 'questions#edit'
  # post '/questions', to: 'questions#create'
end
