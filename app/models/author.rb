class Author < ActiveRecord::Base
  attr_accessible :name, :occupation
  has_many :blogs
end
