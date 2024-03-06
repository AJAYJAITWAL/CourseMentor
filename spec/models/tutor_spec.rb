require 'rails_helper'

RSpec.describe Tutor, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:bio) }
  end

  describe 'associations' do
    it { should belong_to(:course) }
  end
end
