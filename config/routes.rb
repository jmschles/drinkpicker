DrinkPicker::Application.routes.draw do
  root :to => "drinks#show"

  resources :admins, :only => [:create]
  resources :components, :only => [:create]
  resources :drinks
  resources :ingredients, :except => [:show]
  resource :session, :only => [:create, :new, :destroy],
                     :path_names => { new: 'login' }

end