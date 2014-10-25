class Group < ActiveRecord::Base

  has_many :items

  def to_param
   self.slug
  end

end
