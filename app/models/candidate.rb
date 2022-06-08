class Candidate < ApplicationRecord
  def self.vote_number
    %w[1 2 3 4 5 6 7 8 9 10 11 12]
  end
  validates :name, presence: true
  validates :party, presence: true
  validates :birthday, presence: true
  belongs_to :party
end
