class Api::ScriptsController < ApplicationController

  before_action :set_script, only: [:show, :edit, :update, :destroy]

  def index
    render json: Script.all
  end

  def create
    user = User.find(script_params[:user_id])
    # [13] pry(#<Api::ScriptsController>)> d = Time.parse('1991-11-22')
    # => 1991-11-22 00:00:00 -0500
    # [14] pry(#<Api::ScriptsController>)> Time.parse(script_params[:timecode], d)
    # => 1991-11-22 00:00:00 -0500
    # [15] pry(#<Api::ScriptsController>)> Time.parse("00:06:00", d)
    # => 1991-11-22 00:06:00 -0500
    # [16] pry(#<Api::ScriptsController>)> new_d = _
    # => 1991-11-22 00:06:00 -0500
    # [17] pry(#<Api::ScriptsController>)> new_d - d
    # => 360.0
    # [18] pry(#<Api::ScriptsController>)> 360 / 60
    # => 6
    script = user.scripts.new(script_params)
    d = Time.parse('2000-1-1')
    script.timecode = Time.parse("#{script_params[:timecode]}-0000", d)




    if script.characters == nil || script.characters == 0
      script.characters = 45
    end

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
