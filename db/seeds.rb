# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
category = ["Single Malt Whisky", "Grain Whisky", "Blended Whisky" ]

if Category.count == 0 
    category.each do |c|
        Category.create(name: c)
        puts "Created #{c} type"
    end
end

countries = ["Japan", "America", "Ireland", "Scotland", "England", "Taiwan", "Canada", "India", "Australia"]

if Country.count == 0
    countries.each do |c|
        Country.create(name: c)
        puts "Created #{c} country listing"
    end
end

brands = ["Glenfiddich", "Glenmorangie", "Highland Park",  "Macallan", "Hakushu", "Hibiki", "Yamazaki", "William Larue Weller", "Johnnie Walker"]

if Brand.count == 0
    brands.each do |b|
        Brand.create(name: b)
        puts "Created #{b}"
    end
end

# Listing.create(user_id: 1, category_id: 1, brand_id: 2, country_id: 4, title: "Glenmorangie 30 Years - Oloroso Sherry Finish", price: 5500000, year: 2004, sold: false, description: "First filled into ex-Bourbon hogsheads in 1972, it was married in Oloroso sherry butts from December 1989 and bottled without chill filtration at cask strength in 2004.")
# Listing.create(user_id: 1, category_id: 1, brand_id: 7, country_id: 1, title: "Yamazaki 2016 Limited Edition", price: 500000, year: 2016, sold: false, description: "This is a blend of young single malts, matured in American oak casks, Bourbon barrels, European oak barrels, Sherry and Port Wine casks, with some of it having been aged over 20 years.")