require 'amazon/ecs'


namespace :products do
  desc "TODO"
  task add_all: :environment do
    products = CSV.parse(open('lib/tasks/products.csv'))
    byebug
  end
end
