Padaria::Application.routes.draw do
  resources :products

  get "statics/welcome"
  get "statics/about"
end
