class Post < ActiveRecord::Base
    belongs_to :user
    belongs_to :movie

    validates_presence_of :user_id
    validates_presence_of :movie_id
end
