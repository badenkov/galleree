class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  
  def show
    @posts = @user.posts
  end
  
  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
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