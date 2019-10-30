class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all 
    render json: @users
  end

  def show
      user = User.find(params[:id])
      render json: {user: UserSerializer.new(user)}
  end
  
  def create
    user = User.create(user_params)
    if user.valid?
        token = JWT.encode({user: user.id}, "essays")
        render json: {user: UserSerializer.new(user), token: token}, status: :created
    else
        render json: {errors: user.errors.full_messages}, status: :not_acceptable
    end
  end

  private

  def user_params
      params.require(:user).permit(:name, :password, :username, :email)
  end
end