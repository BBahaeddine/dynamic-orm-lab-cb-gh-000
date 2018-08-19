require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord
  
  def initialize(args={})
    args.each{|key, value|
      self.send("#{key}=", value)
    }
    
  end
  
  self.column_names.each{|elem|
    attr_accessor elem.to_sym
  }
  
  def self.table_name
    self.to_s.downcase.pluralize
  end
  
  def table_name_for_insert
    return self.class.table_name
  end
  
  def col_names_for_insert
    self.class.column_names.delete_if {|col| col == "id"}.join(", ")
  end
  
  def values_for_insert
    
  end

end
