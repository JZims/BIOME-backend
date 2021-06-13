Beverage.destroy_all
User.destroy_all
Inventory.destroy_all


10.times do
    Beverage.create(
        producer_name: Faker::Beer.brand,
        proprietary_name: Faker::Beer.name,
        category: Faker::Beer.malts,
        vintage: rand(2000..2019),
        image_url: "not available",
        bin: rand(205..999)
        )
end

boss = User.create(username: "Queso Grande", password: "swordfish", admin: true)

3.times do
    User.create(
        username: Faker::FunnyName.name,
        password: "peon",
        admin: false
    )
end

12.times do
    Inventory.create(user_id: User.all.sample.id, beverage_id: Beverage.all.sample.id)
end