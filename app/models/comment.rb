class Comment < ActiveRecord::Base
  belongs_to :article

  validates :body, :length => { :minimum => 10 }

  attr_accessible :body
end
