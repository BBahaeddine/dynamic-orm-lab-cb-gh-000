require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord
  
  def initialize(args)
    self.new
    args.each{|key, value|
      self.send("#{key}=", value)
    }
  end
  
  self.column_names.each{|elem|
    attr_accessor elem.to_sym
  }

end
