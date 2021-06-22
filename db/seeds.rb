puts "Creating users..."

user_1 = User.create(username: "V Perkins", password: "1234")
user_2 = User.create(username: "Megan Day", password: "5678")


puts "Creating gardens..."

garden_1 = Garden.create(name: "The Secret Garden")
garden_2 = Garden.create(name: "Kew Gardens")

puts "Creating plants..."

snake_plant = Plant.create (genus: "Sansevieria", care_instructions: "Part shade, low light conditions. Let dry completely between waterings.", image: "db/images/snake_plant.png")
peace_lily = Plant.create (genus: "Spathiphyllum", care_instructions: "Medium, indirect light. Let dry between waterings, keep soil moist.", image: "db/images/peace_lily.png")
devils_ivy = Plant.create (genus: "Epipremnum", care_instructions: "Full sun, partial shade. Let dry completely between waterings.", image: "db/images/devils_ivy.png")
spider_plant = Plant.create (genus: "Chlorophytum", care_instructions: "Partial sun, shade. Keep soil moist.", image: "db/images/spider_plant.png")
zz_plant = Plant.create (genus: "Zamioculcas", care_instructions: "	Bright to low indirect light. Let dry completely between waterings.", image: "db/images/zz_plant.png")
dragon_tree = Plant.create (genus: "Dracaena", care_instructions: "	Full sun, partial shade. Let top half of soil dry before watering.", image: "db/images/dragon_tree.png")
christmas_cactus = Plant.create (genus: "Schlumbergera", care_instructions: "Partial sun. Water thoroughly, let soil dry almost completely between waterings.", image: "db/images/christmas_cactus.png")
english_ivy = Plant.create (genus: "Hedera", care_instructions: "Part shade to full shade. Let dry slightly between waterings.", image: "db/images/english_ivy.png")
prayer_plant = Plant.create (genus: "Maranta", care_instructions: "Partial shade, full shade. Do not allow soil to dry out completely.", image: "db/images/prayer_plant.png")


