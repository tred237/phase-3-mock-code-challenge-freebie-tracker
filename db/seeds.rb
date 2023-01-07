puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(item_name: 'hat', value: rand(1..50), company_id: rand(1..4), dev_id: rand(1..4))
Freebie.create(item_name: 'pen', value: rand(1..50), company_id: rand(1..4), dev_id: rand(1..4))
Freebie.create(item_name: 'shirt', value: rand(1..50), company_id: rand(1..4), dev_id: rand(1..4))
Freebie.create(item_name: 'sunglasses', value: rand(1..50), company_id: rand(1..4), dev_id: rand(1..4))
Freebie.create(item_name: 'mug', value: rand(1..50), company_id: rand(1..4), dev_id: rand(1..4))
Freebie.create(item_name: 'key caps', value: rand(1..50), company_id: rand(1..4), dev_id: rand(1..4))
Freebie.create(item_name: 'cup', value: rand(1..50), company_id: rand(1..4), dev_id: rand(1..4))
Freebie.create(item_name: 'binder', value: rand(1..50), company_id: rand(1..4), dev_id: rand(1..4))
Freebie.create(item_name: 'towel', value: rand(1..50), company_id: rand(1..4), dev_id: rand(1..4))
Freebie.create(item_name: 'gift card', value: rand(1..50), company_id: rand(1..4), dev_id: rand(1..4))
Freebie.create(item_name: 'fidget cube', value: rand(1..50), company_id: rand(1..4), dev_id: rand(1..4))

puts "Seeding done!"
