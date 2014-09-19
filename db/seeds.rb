# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

title = ["Mr", "Mrs", "Ms", "Miss", "Dr", "Sr", "Jr"]
names = ["Smith", "Jackson", "Bob", "Siri", "Rob", "John", "Angela", "Maria", "Casey"]

user = User.new(
    :email                 => "#{title[rand(title.length - 1)]}.#{names[rand(names.length - 1)]}@example.com",
    :password              => "12345678",
    :password_confirmation => "12345678"
)
user.save
