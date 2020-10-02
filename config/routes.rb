Rails.application.routes.draw do
  root 'posts#index'
  resources :users, only: %i[index new create show]
  resources :posts, shallow: true do
    collection do
      get :search
    end
    resources :comments
  end
  resources :likes, only: %i[create destroy]
  resources :relationships, only: %i[create destroy]

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
end
