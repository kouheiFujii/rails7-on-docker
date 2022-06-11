Rails.application.routes.draw do
  get "_healthcheck", to: "healthcheck#healthcheck"
end
