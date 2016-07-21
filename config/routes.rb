Rails.application.routes.draw do
  devise_for :users

    resources :recipes  do
        resources :comments, only: [:create, :edit, :update, :destroy]
      end

  root 'recipes#index'

  get 'recipes/show'

  get 'recipes/edit'

  get 'comments/index'
end
