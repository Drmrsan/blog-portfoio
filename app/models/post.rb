class Post < ActiveRecord::Base
	mount_uploader :postimg, PostimgUploader, dependent: :destroy
	validate  :picture_size

	# Validates the size of an uploaded picture.
    def picture_size
      if postimg.size > 5.megabytes
        errors.add(:postimg, "should be less than 5MB")
      end
    end

end
