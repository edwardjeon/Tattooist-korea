class User < ApplicationRecord
    has_secure_password
    # mount_uploader :image, S3Uploader
    
    
    has_attached_file :profile, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :profile, :content_type => /^image\/(jpeg|png|gif|tiff)$/

  validates_attachment_size :profile, :in => 0..10.megabytes



    
end
