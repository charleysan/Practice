require_relative '../inheritance'

# RSpec.describe Person do
#   describe '#initialize' do
#     it 'create a new Person with a name and age' do
#       person = Person.new("Alanna", 23)
#       expect(person.name).to eq("Alanna")
#       expect(person.age).to eq(23)
#     end

#     it 'raises an error if age is negative' do
#       expect{ Person.new("Jess", -1) }.to raise_error(ArgumentError, 'Age must be a positive number')
#     end
#   end
# end

RSpec.describe Person do
  describe '#initialize' do
  let(:person) { Person,new("Noah", 25) }

  it "has a name" do
    expect(person.name).to eq("Noah")
  end

  it "has an age" do
    expect()
end