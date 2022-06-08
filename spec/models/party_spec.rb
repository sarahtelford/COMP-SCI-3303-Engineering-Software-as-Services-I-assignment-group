require 'rails_helper'

RSpec.describe Party, type: :model do
  describe 'a party' do
    it 'has valid fields' do
      expect(Party.new(name: nil)).to_not be_valid
      expect(Party.new(name: "example name", votes: nil)).to be_valid
    end
  end
end
