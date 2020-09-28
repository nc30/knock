class PingController < ApplicationController

  def index
    expires_now
    render json: { message: 'pong' }
  end
end
