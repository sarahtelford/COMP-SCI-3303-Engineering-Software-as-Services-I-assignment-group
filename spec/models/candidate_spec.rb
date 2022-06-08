require 'rails_helper'

RSpec.describe Candidate, type: :model do
  describe 'a candidate' do
    it 'is valid fields' do
      expect(Candidate.new(name: nil)).to_not be_valid
      expect(Candidate.new(birthday: nil)).to_not be_valid
      expect(Candidate.new(party: nil)).to_not be_valid
      expect(Candidate.new(name: "a name", birthday: "02-02-2002", party: "a party", votes: nil)).to be_valid
    end
    it 'is valid with full fields' do
      dummyCandidate = Candidate.new(name: "a name", birthday: "02-02-2002", party: "a party")
      expect(dummyCandidate).to be_valid
    end
    it 'should update with new fields' do
      dummyCandidate = Candidate.new(name: "a name", birthday: "02-02-2002", party: "a party")
      expect(dummyCandidate.update(name: "a name 2", birthday: "02-02-2003", party: "a party2")).to be true
    end
  end
end
