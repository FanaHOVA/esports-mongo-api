require 'watir-webdriver'

b = Watir::Browser.new

1.upto 20 do |n|
  b.goto "http://www.gosugamers.net/counterstrike/demos?page=#{n}"
  8.upto 37 do |m|
    row = b.tr(index: m)
    g = Game.new
    team1 = Team.where(name: row.td(index: 1).text).first_or_create!
    team2 = Team.where(name: row.td(index: 3).text).first_or_create!
    map = Map.where(codename: row.td(index: 2).text).first_or_create!
    tournament = Tournament.where(name: row.td(index: 4).text).first_or_create!
    download = row.td(index: 8).a.href

    puts team1
    puts team2
    puts map
    puts tournament

    g.home_team = team1
    g.away_team = team2
    g.map = map
    g.tournament = tournament
    g.demo_download = download

    g.save
  end
end
