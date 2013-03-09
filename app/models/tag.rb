class Tag < ActiveRecord::Base
  belongs_to :post
  attr_accessible :name

  validates :name, :presence=>true
  validates :name, :uniqueness=>{:scope=>:post,
    :message=>"%{value} is already being used"}

end
