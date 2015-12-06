Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  #root :to => redirect('/')
  
  root to: 'movies#index'
  get '/', to: 'movies#index'
  
  get '/same_director/:id', to: 'movies#same_director', as: 'same_director'

end
