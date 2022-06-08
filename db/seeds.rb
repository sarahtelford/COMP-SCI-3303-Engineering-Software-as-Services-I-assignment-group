# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
parties = Party.create([
                         { name: "Liberal Party of Australia"},
                         { name: "Australian Labor Party"},
                         { name: "Australian Greens"},
                         { name: "Animals Justice Party"},
                         { name: "Australian National Party"},
                         { name: "One Nation"},
                         { name: "Family First "},
                         { name: "Legalise Cannabis Party"}
                       ])

candidates = Candidate.create!([
                                 { name: "John Adam",
                                   party: "Liberal Party of Australia",
                                   birthday: '8/08/2008'},
                                 { name: "Susie Smith",
                                   party: "Australian Labor Party",
                                   birthday: '8/08/2008'},
                                 { name: "Xavier Barns",
                                   party: "Australian Greens",
                                   birthday: '8/08/2008'},
                                 { name: "Paul Rudd",
                                   party: "Animals Justice Party",
                                   birthday: '8/08/2008'},
                                 { name: "Tony Stark",
                                   party: "Australian National Party",
                                   birthday: '8/08/2008'},
                                 { name: "Steve Rogers",
                                   party: "One Nation",
                                   birthday: '8/08/2008'},
                                 { name: "Donald Trumpet",
                                   party: "Family First ",
                                   birthday: '8/08/2008'},
                                 { name: "Happy Harold ",
                                   party: "Australian Greens",
                                   birthday: '8/08/2008'},
                                 { name: "Mary-Jane Dope",
                                   party: "Legalise Cannabis Party",
                                   birthday: '8/08/2008'},
                                 { name: "Che Downs",
                                   party: "Liberal Party of Australia",
                                   birthday: '8/08/2008'},
                                 { name: "Agatha Brown",
                                   party: "Animals Justice Party",
                                   birthday: '8/08/2008'},
                                 { name: "Logan Paul",
                                   party: "One Nation",
                                   birthday: '8/08/2008'},
                               ])