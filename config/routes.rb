Rails.application.routes.draw do
  devise_for :users

    resources :recipes
  root 'recipes#index'

  get 'recipes/show'

  get 'recipes/edit'

  get 'comments/index'
end
