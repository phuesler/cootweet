ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'application', :action => 'index'
  map.logout 'logout', :controller => 'user_sessions', :action => 'destroy'
  map.login 'login', :controller => 'user_sessions', :action => 'new'
  map.signup 'signup', :controller => 'users', :action => 'new'
  map.resources :user_sessions
  map.resources :users 
  map.resources :tweets
end
