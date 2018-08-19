require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord
  def intialize(args) {
    args.each{|key, value|
      self.send("#{key}=", value)
    }
  }

end
