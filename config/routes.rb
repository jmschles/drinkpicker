DrinkPicker::Application.routes.draw do
  root :to => "drinks#show"

  resources :admins, :only => [:create]
  resources :components, :only => [:create]
  resources :drinks, :only => [:create, :index, :show]
  resources :ingredients, :only => [:create]
  resource :session, :only => [:create, :new, :destroy]

end