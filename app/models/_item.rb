class Item < ActiveRecord::Base

#  validate :title,    :presence => true
#  validate :nickname, :presence => true

  belongs_to :type
  belongs_to :item

  has_many   :Items,    :dependent => :destroy
  has_many   :Items,    :through   => :Relation

end
