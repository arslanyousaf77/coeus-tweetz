Rails.application.routes.draw do
  #devise_for :users
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
}
# root :to => 'home#index'
resources :users do
  resources :posts
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
