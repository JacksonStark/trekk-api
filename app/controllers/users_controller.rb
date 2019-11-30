class UsersController < ApplicationController

  def create
    user = User.new(user_params)
    user.save
    registered_user = User.find_by(email: params[:email])
    render :json => { user_id: registered_user.id}
  end

  def show
    users = User.all
    render :json => { users: users }
  end

  def test
    render :json => { bool: true }
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end

# created_at: "2019-11-27T20:21:45.803Z",
# updated_at: "2019-11-27T20:21:45.803Z"


# localhost:3000/users/create?email=adamleseur%40gmail%2Ecom&password=housewives