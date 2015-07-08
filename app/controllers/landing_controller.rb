class LandingController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  	@posts = Post.all.order('created_at DESC').page(params[:page]).per(5)
  end

  def show
  	@post = Post.find(params[:id])
  end
  
end
