Beverage.destroy_all
# User.destroy_all
Inventory.destroy_all



Beverage.create( producer_name: "Grosjean Freres", proprietary_name:"Petite Arvine" , category: "Wine", vintage: 2019 , image_url: "https://cdn.shopify.com/s/files/1/0658/1045/products/IMG_1758.jpg?v=1574100528" , bin: 800 , )
Beverage.create( producer_name: "Ruth Lewandowski", proprietary_name:"Boaz" , category: "Wine", vintage: 2019 , image_url: "https://cdn.shopify.com/s/files/1/0658/1045/products/IMG_1357.jpg?v=1573429972" , bin: 801 , )
Beverage.create( producer_name: "Girolamo Rosso", proprietary_name:"Etna Bianco Nerina" , category: "Wine", vintage: 2018 , image_url: "https://cdn.shopify.com/s/files/1/0658/1045/products/IMG_3149.jpg?v=1578874156" , bin: 802 , )
Beverage.create( producer_name: "Mora E Memo", proprietary_name:"Tino Vermentino" , category: "Wine", vintage: 2019 , image_url: "https://cdn.shopify.com/s/files/1/0658/1045/products/IMG_2037.jpg?v=1574275418" , bin: 803 , )
Beverage.create( producer_name: "Peter Lauer", proprietary_name:"Riesling Barrel X" , category: "Wine", vintage: 2020 , image_url: "https://cdn.shopify.com/s/files/1/0658/1045/products/IMG_1898.jpg?v=1574121169" , bin: 804 , )
Beverage.create( producer_name: "Azienda Agricola Elios", proprietary_name:"Glou Glou Terre Siciliane" , category: "Wine", vintage: 2019 , image_url: "https://cdn.shopify.com/s/files/1/0658/1045/products/IMG_2590.jpg?v=1575315252" , bin: 805 , )
Beverage.create( producer_name: "Via Revolucionaria", proprietary_name:"Criolla Grande Mendoza" , category: "Wine", vintage: 2019 , image_url: "https://cdn.shopify.com/s/files/1/0658/1045/products/IMG_3120.jpg?v=1578872784" , bin: 806 , )
Beverage.create( producer_name: "Matthiasson", proprietary_name:"Chardonnay Linda Vista Vineyard" , category: "Wine", vintage: 2018 , image_url: "https://cdn.shopify.com/s/files/1/0658/1045/products/IMG_3124.jpg?v=1578872925" , bin: 807 , )
Beverage.create( producer_name: "Ruben Diaz", proprietary_name:"La Escalera Garnacha Cebreros" , category: "Wine", vintage: 2018 , image_url: "https://www.somegoodwine.com/collections/new-arrivals/products/2018-ruben-diaz-la-escalera-garnacha-cebreros" , bin: 808 , )
Beverage.create( producer_name: "Mas Champart", proprietary_name:"Petite Arvine" , category: "Wine", vintage: 2019 , image_url: "https://cdn.shopify.com/s/files/1/0658/1045/products/IMG_1758.jpg?v=1574100528" , bin: 809 , )
Beverage.create( producer_name: "Damas de Gassad", proprietary_name:"Vin de Pays d'Oc Rouge" , category: "Wine", vintage: 2015 , image_url: "https://cdn.shopify.com/s/files/1/0658/1045/products/IMG_3162_17d9e926-af0e-497b-b194-0f26b8a96ef3.jpg?v=1578874742" , bin: 8010 , )




# 25.times do
#     Beverage.create(
#         producer_name: Faker::Beer.brand,
#         proprietary_name: Faker::Beer.name,
#         category: Faker::Beer.malts,
#         vintage: rand(2000..2019),
#         image_url: "not available",
#         bin: rand(205..999)
#         )
# end

boss = User.create(username: "Queso Grande", password: "swordfish", admin: true)

6.times do
    User.create(
        username: Faker::FunnyName.name,
        password: "peon",
        admin: false
    )
end

10.times do
    Inventory.create(quantity: rand(1..60), user_id: 1, beverage_id: Beverage.all.sample.id)
end