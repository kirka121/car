Rails.application.routes.draw do
  root 'landing#index'

  post '/toggle_lamp', to: 'landing#toggle_lamp'
  post '/toggle_rgb', to: 'landing#toggle_rgb'
end
