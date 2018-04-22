class Api::ScriptsController < ApplicationController

  before_action :set_script, only: [:show, :edit, :update, :destroy]

  def index
    render json: Script.all
  end

  def create
    user = User.find(script_params[:user_id])
    script = user.scripts.new(script_params)
    script.save
    script.setCaptionsFromText(script)

    if script.save
      render json: script
    else
      render json: { message: script.errors }, status: 400
    end
  end

  def update
    if @script.update(script_params)
      render json: @script
    else
      render json: { message: @script.errors }, status: 400
    end
  end

  def show
    render json: Script.find(params[:id])
  end

  def destroy
    if (@script.destoryAllCaptions && @script.destroy)
      render status: 204
    else
      render json: { message: "Unable to remove this script" }, status: 400
    end
  end


  private

  def set_script
    @script = Script.find(params[:id])
  end

  def script_params
    params.require(:script).permit(:title, :text, :user_id, :characters)

  end



end
