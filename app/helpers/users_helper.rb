module UsersHelper

  def user_avatar(user)
    if user.avatar?
      image_tag(user.avatar, class: 'avatar-circle')
    else
      #ActionController::Base.helpers.content_tag(:div, content_tag(:span, :class 'initials', "Hello world!"), class: 'avatar-circle')
      ActionController::Base.helpers.content_tag :div, :class => 'avatar-circle' do
        ActionController::Base.helpers.content_tag(:span, user.first_name[0].upcase + user.last_name[0].upcase, class: 'initials')
      end
    end
  end
end