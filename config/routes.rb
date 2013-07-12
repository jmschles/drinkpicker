DrinkPicker::Application.routes.draw do
  root :to => "drinks#show"

  resources :admins, :only => [:create]
  resources :components, :only => [:create]
  resources :drinks
  resources :ingredients, :only => [:create, :destroy, :new, :index]
  resource :session, :only => [:create, :new, :destroy]

end