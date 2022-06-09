class VotingBelowController < ApplicationController

  def create
    @voteBelow = VoteBelow.new(votes)

  end

  def candidate_params
    params.require().permit(:votes[])
  end
end