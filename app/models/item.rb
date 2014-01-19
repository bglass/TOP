class Item < ActiveRecord::Base

  belongs_to    :format

  has_many :relation_parents, :foreign_key => "child_id", :class_name => "Relation"
  has_many :relation_children, :foreign_key => "parent_id", :class_name => "Relation"

  has_many :parents, :through => :relation_parents
  has_many :children, :through => :relation_children

end
