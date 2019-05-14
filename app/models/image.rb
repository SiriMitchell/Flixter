class Image < ApplicationRecord
  belongs_to :user
  belongs_to :course

  mount_uploader :image, ImageUploader 
end