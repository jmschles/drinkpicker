DrinkPicker::Application.routes.draw do
  root :to => "drinks#show"

  resources :components, :only => [:create]
  resources :drinks, :only => [:create, :index, :show]
  resources :ingredients, :only => [:create]
end