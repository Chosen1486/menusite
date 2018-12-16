# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all

category_list = [
  { name: "中式料理" },
  { name: "日本料理" },
  { name: "義大利料理" },
  { name: "法式料理" },
  { name: "韓式料理" },
  { name: "美式料理" },
  { name: "泰式料理" },
  { name: "越南料理" },
  { name: "印度料理" },
  { name: "其他" }
]

district_list =[
  { name: "中正區" },
  { name: "大同區" },
  { name: "中山區" },
  { name: "松山區" },
  { name: "大安區" },
  { name: "萬華區" },
  { name: "信義區" },
  { name: "士林區" },
  { name: "北投區" },
  { name: "內湖區" },
  { name: "南港區" },
  { name: "文山區" },
]

category_list.each do |category|
  Category.create( name: category[:name] )
end
puts "Category created!"

district_list.each do |district|
  District.create( name: district[:name] )
end
puts "Category created!"

User.create(email: "test@example.com", password: "testtest", role: "admin")
puts "Default admin created!"