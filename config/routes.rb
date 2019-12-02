Rails.application.routes.draw do

  # USER/REGISTER
  get '/users' => 'users#show'
  post '/users/create' => 'users#create'

  # LOGIN
  get '/sessions/create' => 'sessions#create'

  # TREKKS
  get '/trekks' => 'trekks#show_all'
  get '/trekks/:user_id' => 'trekks#show'
  get '/trekks/guest/:access_code' => 'trekks#guest'
  post '/trekks/create' => 'trekks#create'
  delete '/trekks' => 'trekks#delete'

  # MARKERS
  get '/markers' => 'markers#show_all'
  get '/markers/:trekk_id' => 'markers#show'
  post '/markers/create' => 'markers#create'
  delete '/markers' => 'trekks#delete'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
