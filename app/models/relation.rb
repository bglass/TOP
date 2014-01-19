class Relation < ActiveRecord::Base
  belongs_to :type
  belongs_to :parent, :class_name => "Item"
  belongs_to :child,   :class_name => "Item"
end
