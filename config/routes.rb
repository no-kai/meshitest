Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :post_images, only: %i[new create index show destroy] do
    resource :favorites, only: %i[create destroy]
    resources :post_comments, only: %i[create destroy]
  end
  resources :users, only: %i[show edit update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
