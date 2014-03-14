class AttachedImage < ActiveRecord::Base
  # mount_uploader :attached_image, ImageUploader
  # has_attached_file :attachment
  validates :image, :presence => true
end
