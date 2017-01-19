module UsersHelper

  def show_avatar(user)
    if user.avatar?
      image_tag(user.avatar, class: 'avatar-circle')
    else
      render partial: 'shared/avatar', locals: { user: user }
    end
  end
end