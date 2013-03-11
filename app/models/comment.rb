class Comment < ActiveRecord::Base
  belongs_to :post
 # belongs_to :commenter

  attr_accessible :body, :commenter

  def show_commenters
    commenter_array=Commenter.all.map{ |commenter| [commenter.name,commenter.id]}
    p commenter_array
  end

  validates :body, :presence=>true, :uniqueness=>true
  validates :commenter, :presence=>true
end
