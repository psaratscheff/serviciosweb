Rails.application.routes.draw do

  get '/validarFirma', to: 'validar_firma#index'
  get '/status', to: 'status#index'

end
