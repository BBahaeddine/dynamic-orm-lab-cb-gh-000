require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord
  
  def initialize(args)
    args.each{|key, value|
      self.send("#{key}=", value)
    }
  end
  
  self.columns_name.each{|elem|}

end
