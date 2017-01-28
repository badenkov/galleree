class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  
  def show
    @posts = @user.posts
  end
  
  def friends
    @friends = @user.following_users.paginate(page: params[:page])
  end

  def followers
    @followers = @user.user_followers.paginate(page: params[:page])
  end
  
  private
    
  def set_user
    @user = User.find(params[:id])
  end
end