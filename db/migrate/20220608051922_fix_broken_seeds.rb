class FixBrokenSeeds < ActiveRecord::Migration[7.0]
  def change
    drop_table :candidates
    create_table :candidates do |t|
      t.string :name
      t.string :party
      t.datetime :birthday
      t.integer :votes
    end

    drop_table :parties
    create_table :parties do |t|
      t.string :name
      t.integer :votes
    end
  end
end
