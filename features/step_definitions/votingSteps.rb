Given(/^the following Candidates exist:$/) do |candidates_table|
  candidates_table.hashes.each do |candidate|
    Candidates.create candidate
  end
end