require 'pry'

class School
  attr_accessor :roster
  # attr_accessor :student, :grade
  attr_reader :name

  def initialize(name) # school that can be initialized w a name
    @name = name
    @roster = {} # empty hash upon initialization
  end

  def add_student(student, grade)
    @roster[grade] = [] unless @roster[grade]
      @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, student_array|
      @roster[grade] = student_array.sort
    end
      # binding.pry
      # @roster
  end

end # end of School class

# binding.pry
#
# puts "hello"
