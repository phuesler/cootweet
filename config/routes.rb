ActionController::Routing::Routes.draw do |map|
  map.resources :users

  map.root :controller => 'application', :action => 'index'

  map.logout 'logout', :controller => 'user_sessions', :action => 'destroy'

  map.login 'login', :controller => 'user_sessions', :action => 'new'

  map.resources :user_sessions
end
