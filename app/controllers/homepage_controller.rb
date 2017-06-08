class HomepageController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @user = User.find(params[:id])

    render("home/index.html.erb")
  end

  def seedling
    render("home/seedling.html.erb")
  end

end
