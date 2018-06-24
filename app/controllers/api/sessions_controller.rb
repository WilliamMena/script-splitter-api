require 'auth'
class Api::SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])

      token = Auth.create_token({username: user.username, id: user.id, email: user.email})
      returned_user = Auth.decode_token(token)
      render json: {username: user.username, id: user.id, email: user.email, token: token}, status: 200
    else
      render json: {errors: "Email or Password is incorrect"}, status: 500
    end

  end

  def destroy

  end

end
