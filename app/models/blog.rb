class Blog < ActiveRecord::Base
  attr_accessible :author_id, :body, :title
  belongs_to :author
  has_many :comments
end
