class HomeController < ApplicationController
  include UsersHelper
  helper_method :user_avatar
  
  def index
    @posts = Post.all
  end
end
