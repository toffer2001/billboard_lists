Rails.application.routes.draw do
  get 'artists/index'
  get 'artists/show'
  get 'artists/new'
  get 'artists/edit'
  get 'songs/index'
  get 'songs/show'
  get 'songs/new'
  get 'songs/edit'
  get 'billboards/index'
  get 'billboards/show'
  get 'billboards/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :billboards do
    resources :songs
  end
    
  resources :songs do
    resources :artists
  end
  
end
