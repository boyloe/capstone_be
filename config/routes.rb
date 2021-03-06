Rails.application.routes.draw do
  resources :disliked_candidates
  resources :liked_candidates
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :offices, only: :index
  resources :officials, only: :index
  get '/candidates/zip/:zip', to: 'candidates#by_zip'
  get '/candidates/bio/:can_id', to: 'candidates#bio'
  get '/officials/zipfull/:zip5/:zip4', to: 'officials#by_zip_full'
  get '/candidates/zipfull/:zip5/:zip4', to: 'candidates#by_zip_full'
  get '/elections/zipfull/:zip5/:zip4', to: 'elections#by_zip_full'
  get '/officials/zip/:zip5', to: 'officials#by_zip'
  get '/elections/zip/:zip5', to: 'elections#by_zip'
  get '/votes/:year/:stateid', to: 'votes#vote_categories'
  post '/login', to: 'application#login'
end
