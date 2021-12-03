puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
fb = Company.create(name: "Facebook", founding_year: 2004)
dunmiff = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
mrmeseeks = Dev.create(name: "Mr. Meseeks")
gazorpazop = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

Freebie.create(item_name: "Plumbus", value: 15, company: google, dev:rick)
Freebie.create(item_name: "Death Crystal", value: 999, company: dunmiff, dev:morty)
Freebie.create(item_name: "Mega Seeds", value: 100, company: enron, dev:gazorpazop)

puts "Seeding done!"
