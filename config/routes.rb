Rails.application.routes.draw do
  devise_for :users
  resources :posts
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'posts#index'

  # Comments
  post '/:id/comments/create' => 'comments#create'
  post '/:id/comments/destroy/:comment_id' => 'comments#destroy'
end
