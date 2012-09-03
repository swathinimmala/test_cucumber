class Comment < ActiveRecord::Base
  attr_accessible :author_id, :blog_id, :content
  belongs_to :blog
end
