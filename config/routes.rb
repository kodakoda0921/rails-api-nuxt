Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # APIコントローラへのルーティング
  namespace :api, { format: 'json' } do
    mount ActionCable.server => '/cable'
    namespace :v1 do
      resources :users, only: [:update]
      resources :food_posts
      resources :sessions, only: [:index, :create]
      resources :profiles, only: [:create]
      resources :post_comments
    end
  end
  get '/api/v1/web_search' => 'api/v1/foods#web_search'
end
