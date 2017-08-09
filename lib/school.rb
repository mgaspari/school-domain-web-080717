# code here!
require 'pry'
class School
  attr_accessor :name, :roster
  def initialize(schoolName)
  @name = schoolName
  @roster = {}
  end

  def add_student(name, grade)
      if @roster[grade]
        @roster[grade].push(name)
      else
        @roster[grade] = [name]
      end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
  end
end
# r = School.new("HJU")
# r.add_student("frank", 8)
# r.add_student("john", 10)
# r.add_student("mike", 8)
# r.add_student("drake", 10)
# r.sort
