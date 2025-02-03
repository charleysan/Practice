# #ENCAPSULATION
# #bundle data and methods that operate on that data within one class

# #ABSTRACTION
# # hide complex implementation/logic details and only show whats necessary

# name = "Leon"
# puts name.class
# number = 10
# puts number.class

# class Car 
#   #methods and logic
# end

# my_car = Car.new
# puts my_car.class
# puts my_car

# class Person
#   def set_name(name)
#     @name = name  # @ - indicates instance
#   end

#   def get_name
#     @name
#   end
# end

# person1 = Person.new
# person1.set_name("Charles")
# puts person1.get_name

#name cretaes a getter method for @name  -- intialize is short cut so would not need the  extra set such as

# class Person
#   def intialize(name, age)
#     @name = name  # @ - indicates instance variable
#     @age = age
#   end

#   def get_name
#     @name
#   end
# end

# person1 = Person.new ("Leon", 25)

# puts person1.get_name

# need both to work
#attr_reader :name creates a getter method for @name
#attr_writer :name creates a setter method for @name


# attr_accessor :name creates both getter and setter method

# class Person
#   attr_accessor :name, :age

#   def intialize(name, age)  # its a nice to have to set up one lin ecode
#     @name = name  # @ - indicates instance variable
#     @age = age
#   end

# end

# person1 = Person.new("Leon", 25)
# puts person1.name  #prints Leon
# puts person1.age  #prints 25


# person = Person.new    # if the initialize method was not in the class
# person.name = "Noah"
# person.age = 25


# EXERCISE FOR NEW CLASS 6:35


class Anime
  attr_accessor :title, :genre, :episodes

  def initialize(title, genre)
    @title = title
    @episodes = 0
    @genre = genre
  end

  def watch(episodes)
    @episodes += episodes
    puts "You have watched #{episodes} from '#{title}'."
  end
end


anime_list = []

loop do 
  puts "------------------"
  puts "Anime Watch List"
  puts "Please select tasks from the options below
  1. Add anime title
  2. View all anime
  3. Watch anime episode(s)
  4. Exit"
  puts "------------------"
  puts "Please enter number of choice"
  choice = gets.chomp

  case choice
  when "1"
    print "Enter the title of the anime: "
    title = gets.chomp
    print "Enter the genre of the anime: "
    genre = gets.chomp
    anime_list << Anime.new(title, genre)
    puts "Anime added!"
  when "2"
    puts "\nAnime in your watch list:"
    anime_list.each_with_index do |anime, index|
      puts "#{index + 1}. #{anime.title} Genre: #{anime.genre} (Episodes watched #{anime.episodes})"
    end
  when "3"
    if anime_list.empty?
      puts "No titles available. Please add anime."
    else
      puts "\nSelect an anime to watch:"
      anime_list.each_with_index do |anime, index|
        puts "#{index + 1}. #{anime.title}"
      end
      print "Enter the number of the anime title: "
      ep_number = gets.chomp.to_i
      if ep_number.between?(1, anime_list.length)
        print "How many episode did you watch? "
        episodes = gets.chomp.to_i
        anime_list[ep_number - 1].watch(episodes)
      else
        puts "Invalid anime title number."
      end
    end
  when "4"
    puts "Goodbye!"
    break
  else
    puts "Invalid choice. Please try again."
  end
end