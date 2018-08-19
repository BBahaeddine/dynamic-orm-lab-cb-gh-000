require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord
  
  # def initialize(args)
    
  # end
  
  self.column_names.each{|elem|
    attr_accessor elem.to_sym
  }
  
  def self.table_name
    self.to_s.downcase.pluralize
  end

end
