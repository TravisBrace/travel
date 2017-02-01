Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'tags#index'
  get '/tags/new' => 'tags#new'
  post 'tags' => 'tags#create'
  get '/tags/:id' => 'tags#show', as: :tag


  get 'tags/destinations/new' => 'destinations#new', as: :new_destination
  post 'destinations' => 'destinations#create'
  get 'destinations/:id' => 'destinations#show', as: :destination
  get 'destinations/:id/edit' => 'destinations#edit', as: :edit_destination
  patch '/destinations/:id' => 'destinations#update'
end
