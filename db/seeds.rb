# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

candidates = Candidates.create([
                                 { name: "John Adam",
                                   party: "Liberal Party of Australia"},
                                 { name: "Susie Smith",
                                   party: "Australian Labor Party"},
                                 { name: "Xavier Barns",
                                   party: "Australian Greens"},
                                 { name: "Paul Rudd",
                                   party: "Animals Justice Party"},
                                 { name: "Tony Stark",
                                   party: "Australian National Party"},
                                 { name: "Steve Rogers",
                                   party: "One Nation"},
                                 { name: "Donald Trumpet",
                                   party: "Family First "},
                                 { name: "Happy Harold ",
                                   party: "Australian Greens"},
                                 { name: "Mary-Jane Dope",
                                   party: "Legalise Cannabis Party"},
                                 { name: "Che Downs",
                                   party: "Liberal Party of Australia"},
                                 { name: "Agatha Brown",
                                   party: "Animals Justice Party"},
                                 { name: "Logan Paul",
                                   party: "One Nation"}
                               ])

parties = Parties.create([
                           { name: "Liberal Party of Australia"},
                           { name: "Australian Labor Party"},
                           { name: "Australian Greens"},
                           { name: "Animals Justice Party"},
                           { name: "Australian National Party"},
                           { name: "One Nation"},
                           { name: "Family First "},
                           { name: "Legalise Cannabis Party"}
                         ])