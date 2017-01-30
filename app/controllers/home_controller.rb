class HomeController < ApplicationController
  before_action :set_user
  include UsersHelper
  helper_method :user_avatar
  
  def index
    @post = Post.new
    @friends = @user.all_following.unshift(@user)
    @activities = PublicActivity::Activity.where(owner_id: @friends).order(created_at: :desc).paginate(page: params[:page], per_page: 10)
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
