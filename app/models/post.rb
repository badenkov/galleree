class Post < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  mount_uploader :picture, PictureUploader
  validate :picture_size

  private
  
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end
