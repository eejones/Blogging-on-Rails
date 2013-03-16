class Commenter < ActiveRecord::Base
 attr_accessible :name

 validates :name, :presence=>true
 validates :name,:uniqueness=>true

 @@commenter=:id

 has_many :comments
end
