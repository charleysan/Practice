#superclass helps return 

class Person
  attr_accessor :name, :age
  def initialize(name, age)
    raise ArgumentError, ' Age must be a positive number' if age < 0
    @name = name
    @age = age
  end

  def introduce 
    "Hi, my name is #{@name} and I am #{@age} years old."
  end
end

class Student < Person
  # attr_accessor :name, :age, :grade :school
  
  def initialize(name, age, grade, school)
    super(name, age)

    # @name = name
    # @age = age
    @grade = grade
    @school = school
  end

  def introduce
    super + "Im in grade #{@grade} and I go to #{@school}"
  end

end

class Teacher < Person
  
  
  def initialize(name, age, subject, years_of_experience)
    # can use shortcut of reusuing parentclass [super(variable1,variable2]
    super(name, age) #instead of repeating variables from parent class
    # @name = name
    # @age = age
    @subject = subject
    @years_of_experience = years_of_experience
  end
  def introduce
    "#{super} I teach #{@subject} and have been teaching for #{@years_of_experience} years."
  end
  
end

student = Student.new("Leon", 25, "12th", "FDMS")
puts student.introduce
#attr_accessorr
# puts student.name
# puts student.age
# puts student.grade



teacher = Teacher.new("Charles", 26, "Computer Science", 2)
puts teacher.introduce


# class Shape #SUPERCLASS
#   def draw
#     "Drawing a shape..."
#   end
# end

# class Circle < Shape
#   def draw
#     "Drawing a circle!"
#   end
# end

# class Square < Shape
#   def Drawing
#     "Drawing a square!"
#   end
# end


#Exercise
#Zoo Management
# class Animal
#   attr_accessor :feed, :sound
#   def initialize(feed, sound)
#     @feed = feed
#     @sound = sound
#   end
#   def feed
#     “eats: ”
#   end
#   def sound
#     “makes this sound: ”
#   end
#   def intro
#     “In this part of the zoo we have a ”
#   end
# end
# class Mammal < Animal
#   attr_accessor :feed, :sound, :species, :skin
#   def initialize(feed, sound, species, skin)
#     super(feed, sound)
#     @species = species
#     @skin = skin
#   end
#   def feed
#     super + “#{@feed}”
#   end
#   def sound
#     super + “#{@sound}”
#   end
#   def intro
#     super + “#{@species} with #{@skin} skin.”
#   end
# end
# class Bird < Animal
#   attr_accessor :feed, :sound, :species, :skin
#   def initialize(feed, sound, species, skin)
#     super(feed, sound)
#     @species = species
#     @skin = skin
#   end
#   def feed
#     super + “#{@feed}”
#   end
#   def sound
#     super + “#{@sound}”
#   end
#   def intro
#     super + “#{@species} with #{@skin} skin.”
#   end
# end
# class Reptile < Animal
#   attr_accessor :feed, :sound, :species, :skin
#   def initialize(feed, sound, species, skin)
#     super(feed, sound)
#     @species = species
#     @skin = skin
#   end
#   def feed
#     super + “#{@feed}”
#   end
#   def sound
#     super + “#{@sound}”
#   end
#   def intro
#     super + “#{@species} with #{@skin} skin.”
#   end
# end
# mammal1 = Mammal.new(“small animals”,“Ring-ding-ding-ding-dingeringeding”,“Fox”,“furry”)
# puts mammal1.intro
# puts mammal1.feed
# puts mammal1.sound
# bird1 = Bird.new(“seeds”,“Polly wanna cracker”,“Parrot”,“feathery”)
# puts bird1.intro
# puts bird1.feed
# puts bird1.sound
# reptile1 = Reptile.new(“Kaiju (other monsters)“,”RAWR xD”,“Godzilla”,“scaley”)
# puts reptile1.intro
# puts reptile1.feed
# puts reptile1.sound


# mammal1 = Mammal.new(“small animals”,“Ring-ding-ding-ding-dingeringeding”,“Fox”,“furry”)
# bird1 = Bird.new(“seeds”,“Polly wanna cracker”,“Parrot”,“feathery”)
# reptile1 = Reptile.new(“Kaiju (other monsters)“,”RAWR xD”,“Godzilla”,“scaley”)

#HELPS PRINT SO NOT REPEATING EACH TIME CAN CALL UPON THEM
# animal = [mammal1, bird1, reptile1]
# animal.each_with_index do |animal, index|
#   puts “#{index +1}. #{animal.species}”
#   puts animal.intro
#   puts animal.feed
#   puts animal.sound
#   puts “\n ”
# end



# zoo = []
# loop do
#   puts “Enter animal type: \n 1. mammal \n 2. bird \n 3. reptile \n”
#   type =  gets.chomp.to_i
#   puts “Species”
#   species = gets.chomp
#   puts “Feed:”
#   feed = gets.chomp
#   puts “Sound:”
#   sound = gets.chomp
#   puts “Skin type:”
#   skin = gets.chomp
#   case type
#   when 1
#     zoo << Mammal.new(feed, sound, species, skin)
#   when 2
#     zoo << Bird.new(feed, sound, species, skin)
#   when 3
#     zoo << Reptile.new(feed, sound, species, skin)
#   else
#     “Invalid input. Please select from options 1 to 3.”
#     next
#   end
#   puts “Animals in the zoo:”
#   zoo.each_with_index do |animal, index|
#     puts “#{index +1}. #{animal.species}”
#     puts animal.intro
#     puts animal.feed
#     puts animal.sound
#     puts “\n ”
#   end
#   puts “Would you like to add another animal?”
#   continue = gets.chomp.downcase
#   break unless continue == “yes”
# end
