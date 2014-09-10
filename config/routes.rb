Rails.application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'homepage'

  resource :search, only: [:show, :create]
end
