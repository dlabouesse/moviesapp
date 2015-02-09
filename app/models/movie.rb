class Movie < ActiveRecord::Base
	belongs_to :genre
	has_many :posts, :dependent => :destroy
end
