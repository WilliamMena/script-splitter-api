class Api::UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    user = User.new(user_params)

    if user.save
      render json: user
    else
      render json: { message: user.errors }, status: 400
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end


end
