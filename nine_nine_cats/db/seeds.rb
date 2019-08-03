# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CatRentalRequest.destroy_all
Cat.destroy_all

cat_1 = Cat.create!(name: "Mimi", birth_date:"2017/12/25", color: "White", sex: "F", description: "White cat")
cat_2 = Cat.create!(name: "Anna", birth_date:"2014/12/25", color: "Black", sex: "F", description: "Black cat 2")
cat_3 = Cat.create!(name: "Mike", birth_date:"2018/12/25", color: "Blue", sex: "M", description: "Blue cat")
cat_4 = Cat.create!(name: "Jay", birth_date:"2015/12/25", color: "Multi", sex: "M", description: "Multi cat")
cat_5 = Cat.create!(name: "Lana", birth_date:"2016/12/25", color: "Black", sex: "F", description: "Black cat")

request1 = CatRentalRequest.create!(cat_id: cat_1.id, start_date: "2019/01/01", end_date:"2019/01/15", status: "APPROVED")
request2 = CatRentalRequest.create!(cat_id: cat_2.id, start_date: "2019/01/16", end_date:"2019/01/30", status: "APPROVED")
request3 = CatRentalRequest.create!(cat_id: cat_3.id, start_date: "2019/02/01", end_date:"2019/02/15", status: "APPROVED")
request4 = CatRentalRequest.create!(cat_id: cat_4.id, start_date: "2019/02/16", end_date:"2019/02/28")
request5 = CatRentalRequest.create!(cat_id: cat_5.id, start_date: "2019/03/01", end_date:"2019/03/15")
