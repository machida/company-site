class AttachedImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
