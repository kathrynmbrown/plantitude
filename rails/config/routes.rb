Plantitude::Application.routes.draw do
  namespace :api do
    root :to => 'application#index'
    resources :recipes
    resources :mealcategories
  end
end
