Rails.application.routes.draw do
  resources :media
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   get 'post/list'
   get 'post/new'
   post 'post/create'
   patch 'post/update'
   get 'post/list'
   get 'post/show'
   get 'post/edit'
   get 'post/delete'
   get 'post/update'
   
end
