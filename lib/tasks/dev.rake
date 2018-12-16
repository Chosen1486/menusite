namespace :dev do
  task fake: :environment do
    Restaurant.destroy_all
    district_list =["中正區", "大同區", "中山區", "松山區", "大安區", "萬華區", 
                   "信義區", "士林區", "北投區", "內湖區", "南港區", "文山區"]

    100.times do |i|
      Restaurant.create!(name: FFaker::Name.first_name,
        tel: FFaker::PhoneNumber.short_phone_number,
        address: FFaker::Address.street_address,
        description: FFaker::Lorem.paragraph,
        category: Category.all.sample,
        district: district_list.sample
      )
    end
    puts "have created fake restaurants"
    puts "now you have #{Restaurant.count} restaurants data"
  end
end