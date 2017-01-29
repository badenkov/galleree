module UsersHelper

  def user_avatar(user)
    if user.avatar?
      ActionController::Base.helpers.image_tag(user.avatar, class: 'avatar-circle')
    else
      ActionController::Base.helpers.content_tag :div, :class => 'avatar-circle' do
        ActionController::Base.helpers.content_tag(:span, user.first_name[0].upcase + user.last_name[0].upcase, class: 'initials')
      end
    end
  end
  
  def options_for_sexes
    [['Male', 'male'], ['Female', 'female']]
	end
	
	def is_current_user?(user)
    user == current_user
  end
end