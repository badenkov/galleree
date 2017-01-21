class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  
  def show
    @posts = @user.posts
  end
  
  private
    
  def set_user
    @user = User.find(params[:id])
  end
end