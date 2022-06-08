class AddDatabases < ActiveRecord::Migration[7.0]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :party
      t.string :birthday
      t.string :votes
    end
    create_table :parties do |t|
      t.string :name
      t.string :votes
    end
  end
end
