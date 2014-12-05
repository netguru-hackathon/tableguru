require 'nokogiri'
require 'csv'
require 'open-uri'

namespace :import do
  desc 'Imports people from netguru.co/team'
  task netguruco: :environment do
    doc = Nokogiri::HTML(open("https://netguru.co/team"))
    CSV.open(Rails.root.join('people.csv'), 'wb') do |csv|
      doc.css('.folk').each do |folk|
        first_name = folk.css('span').first.text.strip
        last_name = %w(Nowak Garstka).sample
        img_src = folk.css('img').first.attr('src')
        Guest.create(name: first_name, image_url: img_src)
        csv << [first_name, last_name, img_src]
      end
    end
  end
end
