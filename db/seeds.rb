# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(name: 'Grand Magus').build_user(email: 'rubick@admin.com', password: '111111', roles: 'headmaster').save


Instructor.create(first_name: 'Rylai', last_name: 'Proudmoore', age: 27, education: 'Masters', salary: 35000).build_user(email: 'rylai@instructor.com', password: '111111', roles: 'instructor').save