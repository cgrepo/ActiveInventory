class Broken < ActiveRecord::Base
    mount_uploader :picOf, MyPictureUploader
	mount_uploader :picSerie, MyPictureUploader
	mount_uploader :pic, MyPictureUploader
	belongs_to :Delegation
	belongs_to :Dependency
	belongs_to :user
end
