class Post < ActiveRecord::Base
  is_impressionable
  attr_accessible :content, :name, :title, :tags_attributes

  validates :name, :presence=>true
  validates :title, :presence=>true, :length=>{:minimum=>5}
  validates :content, :presence=>true, :on=>:create, :unless=>:wizard_user

  def wizard_user
	name=="wizard"
  end


  has_many :comments, :dependent => :destroy
  has_many :tags

  accepts_nested_attributes_for :tags, :allow_destroy=>true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? }}
end
