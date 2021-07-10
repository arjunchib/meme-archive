Rails
  .application
  .routes
  .draw do
    resources :memes do
      resources :commands, shallow: true
      resources :tags
      collection { get 'random' }
    end
    resources :sessions
    get '/auth/:provider/callback', to: 'sessions#create'
    root to: 'memes#index'
  end
