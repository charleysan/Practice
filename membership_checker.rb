# Goal: Validate a user’s membership ID against a known list of valid IDs, using Ruby’s error-handling features.
# Scenario
# Imagine you have a small club or service with a few valid membership IDs. A user must enter a valid ID to proceed. If they fail multiple times, the program refuses access.
# Requirements:
# Create a file named membership_checker.rb.
# Define a custom exception class, e.g. InvalidMembershipError.
# Store valid IDs in an array (e.g., ["AB123", "CD456", "EF789"]).
# Prompt the user for their membership ID.
# Raise an InvalidMembershipError if the entered ID is not in the valid list.
# Rescue this error, retry up to 3 attempts, then exit if still invalid.
# Use ensure to print a final message (e.g., "ID check finished."), regardless of success or failure
# Class NoNumberErro

# Made a custom error class to call
class NegativeNumberError < StandardError  #custom class made - 
end

def square_root(number)
  raise NegativeNumberError, "Cannot take square root of a negative number." if number < 0
  Math.sqrt(number)
end

begin
  puts square_root(9) #Outputs: 3.0
  puts square_root(-4) # Raises NegativeNumberError
rescue NegativeNumberError => e
  puts e.message
end