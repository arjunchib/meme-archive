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
    direct :public_blob do |blob|
      if Rails.application.config.active_storage.service == :digitalocean
        "https://meme-archive.nyc3.cdn.digitaloceanspaces.com/#{blob.key}"
      else
        url_for(blob)
      end
    end
  end
