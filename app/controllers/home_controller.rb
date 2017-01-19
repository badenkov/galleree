class HomeController < ApplicationController
  include UsersHelper
  helper_method :show_avatar
  
  def index
    @posts = Post.all
  end
end
