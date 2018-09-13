Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :albums, only: %i[index show new create destroy] do
    resources :tracks, only: %i[create destroy]
  end

  resources :artists, only: %i[index show new create destroy] do
    resources :albums, only: %i[show]
    resources :tracks, only: %i[create destroy]
  end
end
