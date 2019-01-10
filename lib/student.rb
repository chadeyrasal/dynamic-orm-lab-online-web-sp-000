require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord

  self.column_names.each do |column_name|
    attr_accessor column_name.to_sym
  end

  def self.find_by_name
    sql = "SELECT * FROM #{table_name_for_insert} WHERE name = #{name}"
  end

  def self.find_by
  end

end
