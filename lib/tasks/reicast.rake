require 'json'

namespace :reicast do
  desc "USAGE: rake reicast:json"
  task json: :environment do
    puts "Starting json parsing..."
    @data = JSON.parse(File.read(Rails.root.join('public/games.json')))
    # binding.pry
    # puts @data


    puts "Inserting data ..."
    Game.destroy_all

    @data.each do |game|
      meta = game["meta-info"]
      game = Game.new(name: meta["productName"],company: meta["publisher"], fingerprint: meta["productId"])

      game.releases << Release.new(name: meta["productVersion"], area_e: meta["areas"].include?("E"), area_u: meta["areas"].include?("U"), area_j: meta["areas"].include?("J"), peripherals: meta["peripherals"], release_date: meta["releaseDate"])

      game.releases.first.versions << Version.new(name: "official release", version_type: "official")

      game.releases.first.versions.first.discs << Disc.new(fingerprint: meta["discId"])


      game.save

    end

    puts "Done."
  end
end