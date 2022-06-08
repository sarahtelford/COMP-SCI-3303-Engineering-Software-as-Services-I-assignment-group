class AddDatabases < ActiveRecord::Migration[7.0]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :party
      t.datetime :birthday
      t.integer :votes
    end
    create_table :parties do |t|
      t.string :name
      t.integer :votes
    end
  end
end