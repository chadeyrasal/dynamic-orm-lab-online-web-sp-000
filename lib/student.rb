require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord

  self.column_names.each do |column_name|
    attr_accessor column_name.to_sym
  end

  # def self.find_by_name(name)
  #   sql = "SELECT * FROM #{InteractiveRecord.table_name} WHERE name = #{name}"
  #   DB[:conn].execute(sql)
  # end

  def self.find_by
  end

end
