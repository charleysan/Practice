require_relative '../modules'

RSpec.describe Introduction do
  class Person
    include Introduction

    def initialize(name, age)
      @name = name
      @age = age
    end
  end

  subject { Person.new("Leon", 26) }

  describe '#introduce' do
    it 'return the correct introduction message' do
      expect(subject.introduce).to eq("Hello, my name is Leon")
    end
  end
  describe '#into' do
    it 'return the correct introduction message' do
      expect(subject.into).to eq("Im 26 years old")
    end
  end 
end