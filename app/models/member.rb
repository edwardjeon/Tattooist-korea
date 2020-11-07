class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    # mount_uploader :mavatar, AvatarUploader
    #mount_uploader :image, S3Uploader
    
    
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
  
    # Member MAvatar Validation
    # validates_integrity_of  :mavatar
    # validates_processing_of :mavatar

    # private
    #   def avatar_size_validation
    #     errors[:mavatar] << "should be less than 500KB" if avatar.size > 0.5.megabytes
    #   end
    
    
    
end
