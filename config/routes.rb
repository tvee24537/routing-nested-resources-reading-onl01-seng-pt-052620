Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show]

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'
  get 'authors/:id/posts'
  get 'authors/:id/posts/:post_id'
end
