class Api::ScriptsController < ApplicationController

  before_action :set_script, only: [:show, :edit, :update, :destroy]

  def index
    render json: Script.all.to_json
  end

  def create
    user = User.find(script_params[:user_id])

    script = user.scripts.new(script_params)

    if script.characters == nil || script.characters == 0
      script.characters = 45
    end

    splitTime = script_params["timecode"].split(":")
    hour = splitTime[0]
    min = splitTime[1]
    sec = splitTime[2]

    script.timecode = Time.new(1991, 11, 22, hour, min, sec, "-00:00")

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
    params.require(:script).permit(:title, :text, :user_id, :characters, :timecode)

  end



end
