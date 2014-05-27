Plantitude::Application.routes.draw do
  namespace :api do
    resources :recipes
  end
end
