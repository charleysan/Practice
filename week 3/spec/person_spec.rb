require_relative '../inheritance'

# RSpec.describe Person do  #for the Class or module
#   describe '#initialize' do   #method or function
#     it 'create a new Person with a name and age' do  #what the method should do
#       person = Person.new("Alanna", 23)   #create the instance/object
#       expect(person.name).to eq("Alanna")
#       expect(person.age).to eq(23)          #two lines for exepectations of program to run
#     end

#     it 'raises an error if age is negative' do
#       expect{ Person.new("Jess", -1) }.to raise_error(ArgumentError, 'Age must be a positive number')
#     end
#   end
# end

RSpec.describe Person do  #for the Class or module
  describe '#initialize' do  #method or function
  let(:person) { Person,new("Noah", 25) }

  it "has a name" do
    expect(person.name).to eq("Noah")
  end

  it "has an age" do
    expect()
end