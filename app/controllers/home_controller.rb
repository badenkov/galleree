class HomeController < ApplicationController
  before_action :set_user
  include UsersHelper
  helper_method :user_avatar
  
  def index
    @posts = Post.all
  end
  
  def find_friends
    @friends = @user.all_following
    @users =  User.where.not(id: @friends.unshift(@user)).paginate(page: params[:page])
  end
  
  private
  def set_user
    @user = current_user
  end
end
