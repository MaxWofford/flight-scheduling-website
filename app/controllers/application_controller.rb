class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :set_start_time

  def set_start_time
    @start_time = Time.now.usec
  end

  protected
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to login_path, :notice => 'if you want to add a notice'
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end
end
