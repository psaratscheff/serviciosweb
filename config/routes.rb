Rails.application.routes.draw do

  post '/validarFirma', to: 'validar_firma#index'
  get '/status', to: 'status#index'

end
