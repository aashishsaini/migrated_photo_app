class WelcomeController < ApplicationController
  def index
    redirect_to user_signed_in? ? projects_url(current_user) : projects_url
  end
end
