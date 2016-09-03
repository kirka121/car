class LandingController < ApplicationController
  include PiPiper
  @@pin17 = PiPiper::Pin.new(pin: 17, direction: :out)
  @@pin27 = PiPiper::Pin.new(pin: 27, direction: :out)

  def index

  end

  def toggle_lamp
    if lamp_params[:toggle] == 'on'
      @@pin17.on
    else
      @@pin17.off
    end

    redirect_to root_path
  end

  def toggle_rgb
    if lamp_params[:toggle] == 'on'
      @@pin27.on
    else
      @@pin18.off
    end

    redirect_to root_path
  end

  private

  def lamp_params
    params.require(:lamp).permit(:toggle)
  end

end
