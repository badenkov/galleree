class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  
  mount_uploader :avatar, PictureUploader
  
  has_many :posts
  
  def full_name
    return "#{first_name} #{last_name}".strip if (first_name || last_name)
    "Anonymous"
  end
end
