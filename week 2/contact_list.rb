require 'json'
contacts = []
begin
  file = File.open("contacts.json", "r")
  contacts = JSON.parse(file.read, symbolize_names: true)
  puts "Contacts loaded:"
rescue Errno::ENOENT
  puts "File not found."
rescue JSON::ParserError
  puts "Error parsing json data."
ensure
  file.close if file
end
def save_contacts(people)
  begin
    file = File.open("contacts.json", "w")
    file.write(JSON.pretty_generate(people))
    puts "Contacts saved."
  rescue IOError => e
    puts "An error occurred while saving contacts: #{e.message}"
  ensure
    file.close if file
  end
end
loop do
  puts "\nContact List Menu:"
  puts "1. Add contact"
  puts "2. Remove contact"
  puts "3. View contacts"
  puts "4. Search for a contact"
  puts "5. View contacts alphabetically"
  puts "6. Exit"
  puts "Enter your choice: "
  choice = gets.chomp.to_i
  case choice
  when 1
    puts "Enter contact name: "
    name = gets.chomp
    puts "Enter contact phone number: "
    phone = gets.chomp
    puts "Enter contact email: "
    email = gets.chomp
    contacts.push({ name: name, phone: phone, email: email })
    puts "Contact added."
  when 2
    puts "Enter contact name to remove: "
    name = gets.chomp
    contact = contacts.find { |c| c[:name] == name }
    if contact
      contacts.delete(contact)
      puts "Contact removed."
    else
      puts "Contact not found."
    end
  when 3
    puts "Contact List:"
    contacts.each_with_index do |contact, index|
      puts "#{index + 1}. #{contact[:name]} - #{contact[:phone]} - #{contact[:email]}"
    end
  when 4
    puts "Please input the name of the contact you are searching for:"
    search = gets.chomp.downcase
    contact = contacts.find { |c| c[:name].downcase == search }
    if contact
      puts "Here is the contact info for #{search.capitalize}"
      puts "Name: #{contact[:name]}"
      puts "Phone: #{contact[:phone]}"
      puts "Email: #{contact[:email]}"
    else
      puts "Contact not found."
    end
  when 5
    sort_contacts = contacts.sort_by { |contact| contact[:name].capitalize }
    sort_contacts.each_with_index do |contact, index|
      puts "#{index + 1}. #{contact[:name]} - #{contact[:phone]} - #{contact[:email]}"
    end
  when 6
    puts "Goodbye!"
    save_contacts(contacts)
    break
  else
    puts "Invalid choice. Please try again."
  end
end