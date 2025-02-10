require_relative '../HW/course'

# Create a Student Management System in Ruby. You’ll define a Student class and a Course class, then allow students to enroll in courses and display their information. Below are the steps for completing the core project—and bonus tasks for going above and beyond.
# Part 1: Core Requirements
# Student Class (student.rb)
# Instance Variables:
# @name
# @student_id
# @courses (array to hold enrolled courses)
# Methods:
# initialize(name, student_id): set up name, student_id, and initialize @courses as an empty array.
# display_info: return a string like "Student Name: X, ID: Y".
# enroll(course): add the given Course object to @courses and return "Enrolled in #{course.course_name}".
# list_courses: if @courses is empty, return "No courses enrolled."; otherwise, list all course names.

class Student
  attr_accessor :name, :student_id, :courses
  def initialize (name, student_id)
      @name = name
      @student_id = student_id
      @courses = []
  end

  def display_info
    "Student Name: #{@name}, ID: #{@student_id}"
  end

  def enroll(course)
    if @courses.include?(course)
      return "Already enrolled into #{course.course_name}"
    else
      @courses << course
      course.add_student(self)
      return "Enrolled into #{course.course_name}"
    end  
  end

  def unenroll(course)
  
    @courses.delete(course) 
    return "Unenrolled from #{course}"
  end

  def list_courses
    if @courses.empty?
      return "No courses enrolled."
    else 
      @courses.each_with_index do |course , index|
        return "#{@name} has been enrolled in the following courses: 
        #{index + 1}. #{course.course_name}"
      end
     end     
  end

end

student1 = Student.new("Patrick Him", 149150)
course1 = Course.new("HR Review", 671)
course2 = Course.new("Paycheck Overview", 482)

puts course1.display_info


puts student1.display_info
puts student1.list_courses



puts student1.enroll(course1)
puts student1.list_courses


# student1.unenroll("Paycheck Overview")
# puts student1.list_courses


# puts course1.display_info

