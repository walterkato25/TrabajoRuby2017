Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/courses', to:'course#index'
  get '/courses/new', to:'course#new'
  post '/courses', to:'course#create'
  get '/courses/:id', to:'course#show'
  get '/courses/:id/edit', to:'course#edit'
  put '/courses/:id', to:'course#update'
  delete '/courses/"id', to:'course#destroy'


  root 'static_pages#home'
end
