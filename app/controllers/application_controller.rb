class ApplicationController < ActionController::Base
  protect_from_forgery with: :Exception
  include DefaultPageContent
  
end
