class S3image < ActiveRecord::Base
    mount_uploader :my_image, PoliceUploader
end
