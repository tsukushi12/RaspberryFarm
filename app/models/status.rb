class Status < ApplicationRecord
  mount_uploader(:img, ImageUploader)
  belongs_to :farm
  require "carrierwave/orm/activerecord"
end
