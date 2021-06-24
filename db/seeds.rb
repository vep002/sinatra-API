
User.destroy_all
Garden.destroy_all
Plant.destroy_all

puts "Creating users..."

user_1 = User.create(username: "V Perkins", password: "1234")
user_2 = User.create(username: "Megan Day", password: "5678")


puts "Creating gardens..."

garden_1 = Garden.create(name: "The Secret Garden", user_id: user_1.id)
garden_2 = Garden.create(name: "Kew Gardens", user_id: user_2.id)

puts "Creating plants..."
snake_plant = Plant.create(common_name: "Snake Plant", genus: "Sansevieria", care_instructions: "Part shade, low light conditions. Let dry completely between waterings.", image: "db/images/snake_plant.png")
peace_lily = Plant.create(common_name: "Peace Lily", genus: "Spathiphyllum", care_instructions: "Medium, indirect light. Let dry between waterings, keep soil moist.", image: "db/images/peace_lily.png")
devils_ivy = Plant.create(common_name: "Devil's Ivy", genus: "Epipremnum", care_instructions: "Full sun, partial shade. Let dry completely between waterings.", image: "db/images/devils_ivy.png")
spider_plant = Plant.create(common_name: "Spider Plant", genus: "Chlorophytum", care_instructions: "Partial sun, shade. Keep soil moist.", image: "db/images/spider_plant.png")
zz_plant = Plant.create(common_name: "ZZ Plant", genus: "Zamioculcas", care_instructions: "Bright to low indirect light. Let dry completely between waterings.", image: "db/images/zz_plant.png")
dragon_tree = Plant.create(common_name: "Dragon Tree", genus: "Dracaena", care_instructions: "Full sun, partial shade. Let top half of soil dry before watering.", image: "db/images/dragon_tree.png")
christmas_cactus = Plant.create(common_name: "Christmas Cactus", genus: "Schlumbergera", care_instructions: "Partial sun. Water thoroughly, let soil dry almost completely between waterings.", image: "db/images/christmas_cactus.png")
english_ivy = Plant.create(common_name: "English Ivy", genus: "Hedera", care_instructions: "Part shade to full shade. Let dry slightly between waterings.", image: "db/images/english_ivy.png")
prayer_plant = Plant.create(common_name: "Prayer Plant", genus: "Maranta", care_instructions: "Partial shade, full shade. Do not allow soil to dry out completely.", image: "db/images/prayer_plant.png")


