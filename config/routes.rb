Rails.application.routes.draw do
  resources :categories, except: [:new, :edit]
  resources :items, except: [:new, :edit]
  get '/categories/:category' => 'items#category'
  get '/my-items' => 'items#myitems'
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
