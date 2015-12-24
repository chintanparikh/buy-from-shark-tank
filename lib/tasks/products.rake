namespace :products do
  desc "TODO"
  task add_all: :environment do
    products = CSV.parse(open('lib/tasks/products.csv'))  
    products.each do |product|
      title = product[2]

      Listing.create(
        season:  product[0],
        episode: product[1],
        name:    product[2],
        price:   product[3],
        image:   product[4],
        link:    product[5])
    end
  end
end