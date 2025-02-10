# Course Class (course.rb)
# Instance Variables:
# @course_name
# @course_code
# Methods:
# initialize(course_name, course_code): store course details.
# display_info: return "Course Name: X, Code: Y".
# Connecting Them
# At the top of student.rb, add require_relative 'course' so Student can reference the Course class.
# Test your code by creating a Student, creating multiple Course objects, enrolling the student, and printing list_courses.

class Course
  attr_accessor :course_name, :course_code, :enrolled_students
  def initialize (course_name, course_code)
      @course_name = course_name
      @course_code = course_code
      @enrolled_students= []
  end

  def display_info
      "Course Name: #{@course_name}, Code: #{@course_code}"
  end

  def add_student(student)
    if @enrolled_students.include?(student)
      return "Already enrolled into course"
    else 
      @enrolled_students << student
      return "#{student.name} has been enrolled in #{@course_name}"
    end
  end

  def remove_student
    if @enrolled_students.inlcude?(student)
      @enrolled_students.delete(student)
      return "#{student.name} has been removed from #{@course_name}"
    else
      return "Student has not been enrolled in class"
    end
  end
end