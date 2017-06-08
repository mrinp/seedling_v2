Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
if current_user =! nil
  # root to: "home#index"
  get "/home/index", :controller => "homepage", :action => "index"
else
  # root to: "home#index"
  get "/home/seedling", :controller => "homepage", :action => "seedling"

  end

# get "/home/index", :controller => "homepage", :action => "index"
# get "/home/seedling", :controller => "homepage", :action => "seedling"

end
