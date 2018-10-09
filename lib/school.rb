# code here!
class School

  attr_accessor :roster # both getter and setter
  attr_reader :name

  def initialize(name, roster = {})
    @name = name
    @roster = roster # roster is an empty hash upon initialization
  end

  def add_student(name, grade)
    # access the instance variable that can be accessed from here
    # the value at the grade key is an empty array UNLESS we already have that grade
    # if that grade already exists, shovel the student name into the array
    @roster[grade] = [] unless @roster[grade]
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, student_array|
       @roster[grade] = student_array.sort
    end
  end

end
