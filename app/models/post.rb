class Post < ActiveRecord::Base
  
  belongs_to :user
  
  acts_as_commentable
  acts_as_votable
  
  mount_uploader :picture, PictureUploader
  
  validates_presence_of :content
  validates_presence_of :user
  validate :picture_size
  
  private
  
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end
