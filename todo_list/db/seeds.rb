# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Todo.destroy_all

todo_list = [
	{
		"title" => "Buy Milk",
		"due_date" => "2017-03-22"
	},
	{
		"title" => "Booking tickets",
		"due_date" => "2017-03-26"
	},
	{
		"title" => "Piano class",
		"due_date" => "2017-04-12"
	},
	{
		"title" => "Final project",
		"due_date" => "2017-04-29"
	},

]


todo_list.each do |todo|
	Todo.create(
		:title => todo["title"],
		:due_date => todo["due_date"]
	)

end