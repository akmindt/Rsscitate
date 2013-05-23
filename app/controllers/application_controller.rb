class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_user

  def set_user
  	@user = User.first
  end
end
