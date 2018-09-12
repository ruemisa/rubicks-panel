class ApplicationController < ActionController::Base
  protect_from_forgery with: :Exception
  include DefaultPageContent
  
  def after_sign_in_path_for(resource)
    dashboard_path
  end
end
