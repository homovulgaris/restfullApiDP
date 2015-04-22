class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception

  wrap_parameters format: [:json]


  def new
    console
    @post = Post.new
  end

end
