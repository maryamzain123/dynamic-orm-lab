require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord

ATTRIBUTES = {
    :id => "INTEGER PRIMARY KEY",
    :name =>"TEXT",
    :grade => "TEXT"
}
def attr_accessor
ATTRIBUTES.keys.each do |key|
    attr_accessor key
end
end

    def self.table_name
        "#{self.to_s.downcase}s"
    end


end
