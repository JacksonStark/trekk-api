Rails.application.routes.draw do

  get '/users' => 'users#show'

  get '/users/create' => 'users#create'

  get '/sessions/create' => 'sessions#create'

  get '/trekks/create' => 'trekks#create'

  get '/trekks' => 'trekks#show_all'
  
  get '/trekks/:user_id' => 'trekks#show'

  get '/markers/create' => 'markers#create'

  get '/markers/' => 'markers#show_all'

  get '/markers/:trekk_id' => 'markers#show'

  get '/test' => 'users#test'

  # http://localhost:3000/markers/create?marker_image=sad&spawned_description=null&spawned_image=blah&spawned_video=haha&trekk_id=1

  # http://localhost:3000/trekks/create?name=sad&user_id=2

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
