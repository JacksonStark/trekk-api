class SessionsController < ApplicationController

  def create

    user = User.authenticate_with_credentials(params[:email], params[:password])
      if user
        render :json => { user_id: user.id}
      else
        render :json => { user_id: nil }
      end
  end
  
end

# localhost:3000/sessions/create?email=adamleseur%40gmail%2Ecom&password=housewives
