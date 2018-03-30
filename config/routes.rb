Rails.application.routes.draw do
  # http_verb 'url', to: '{controller}#{method}'

  get '/', to: 'places#index'
  get '/places/:id', to: 'places#show'
  get '/places/new', to: 'places#new'
  post '/places/', to: 'places#create'
  get '/places/:id/edit', to: 'places#edit'
  put '/places/:id', to: 'places#update'
  delete '/places/:id', to: 'places#destroy'

  get '/xyzs', to: 'xyzs#index'
  get '/xyzs/:id', to: 'xyzs#show'
end
