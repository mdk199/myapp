class WelcomeController < ActionController::Base
  layout "layouts/default", :only => [:index]
  
  def index
  end
end