class User < ActiveRecord::Base
	has_secure_password

	validates_uniqueness_of :email
	validates_uniqueness_of :name

	validates_confirmation_of :password_digest

	mount_uploader :photo, ImageUploader

	has_many :posts, :dependent => :destroy

end
