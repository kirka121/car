class LandingController < ApplicationController
  include PiPiper

  def index

  end

  def toggle_lamp
    byebug

    lamp = PiPiper::Pin.new(pin: 17, direction: :out)

    if lamp_params == :on
      lamp.on
    else
      lamp.off
    end

    redirect_to :index
  end

  private

  def lamp_params
    params.require(:lamp).permit(:toggle)
  end

end
