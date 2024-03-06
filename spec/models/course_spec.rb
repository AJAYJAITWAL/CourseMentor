require 'rails_helper'

RSpec.describe Course, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end

  describe 'associations' do
    it { should have_many(:tutors).dependent(:destroy) }
    it { should accept_nested_attributes_for(:tutors) }
  end

  describe 'nested attributes' do
    it 'allows creation of tutors through nested attributes' do
      course = Course.new(name: 'Mathematics', tutors_attributes: [{ name: 'John Doe', bio: "I have a Master's degree in Mathematics and have been tutoring for over 5 years. I specialize in calculus and algebra." }])
      expect(course.save).to be true
      expect(course.tutors.count).to eq(1)
      expect(course.tutors.first.name).to eq('John Doe')
    end
  end
end
