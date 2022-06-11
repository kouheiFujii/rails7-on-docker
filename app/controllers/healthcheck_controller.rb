class HealthcheckController < ApplicationController
  def healthcheck
    msg = {message: "ok"}
    render json: msg, status: :ok
  end
end
