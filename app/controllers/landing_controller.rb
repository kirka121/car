class LandingController < ApplicationController
  include PiPiper
  #@@lamp = PiPiper::Pin.new(pin: 17, direction: :out)

  def index

  end

  def toggle_lamp
    if lamp_params[:toggle] == 'on'
      @@lamp.on
    else
      @@lamp.off
    end

    redirect_to root_path
  end

  private

  def lamp_params
    params.require(:lamp).permit(:toggle)
  end

end
