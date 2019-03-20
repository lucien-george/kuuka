class Photo < ApplicationRecord
  belongs_to :storage, optional: true
  belongs_to :vehicles, optional: true
  mount_uploader :url, PhotoUploader
end
