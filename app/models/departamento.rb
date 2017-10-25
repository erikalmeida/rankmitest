class Departamento < ActiveRecord::Base
	#belongs_to :departamento

	#attr_accessible :area, :parent

  #belongs_to :parent, :class_name => "Departamento"
  #has_many :children, :class_name => "Departamento", :foreign_key => 'departamento_id'

  scope :top_level, -> {
  	where(:departamento_id => nil)
  }


  def to_node
    { "attributes" => self.attributes,
      "children"   => self.children.map { |c| c.to_node }
    }
  end

  def descendents
    children.map do |child|
      [child] + child.descendents
    end.flatten
  end


  def self_and_descendents
    [self] + descendents
  end

  def descendent_departamentos
    self_and_descendents.map(&:departamento).flatten
  end

  def parent_name
  # it may not have a parent
  parent.try(:area)
end

def has_parent?
  parent.present?
end

def has_children?
  children.exists?
end
end
