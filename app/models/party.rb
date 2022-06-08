class Party < ApplicationRecord
  def self.vote_number
    %w[1 2 3 4 5 6]
  end
  has_many :candidates, dependent: :destroy
end