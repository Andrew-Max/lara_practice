Rails.application.routes.draw do
  # http_verb 'url', to: '{controller}#{method}'

  resources 'users'

  # get all of  the comments for the user where user_id = :id,
  get '/users/:id/comments', to: 'comments#index'


  get '/places', to: 'places#index'
  get '/places/:id', to: 'places#show'
  get '/places/new', to: 'places#new'
  post '/places/', to: 'places#create'
  get '/places/:id/edit', to: 'places#edit'
  put '/places/:id', to: 'places#update'
  delete '/places/:id', to: 'places#destroy'

  get '/xyzs', to: 'xyzs#index'
  get '/xyzs/:id', to: 'xyzs#show'
end
