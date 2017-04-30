# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

create_account = User.create([
  email: 'admin@gmail.com',
  password: '111111',
  password_confirmation: '111111',
  is_admin: 'true'
])
puts 'Admin account is created successfully!'

create_account = User.create([
  email: 'anndo@gmail.com',
  password: '111111',
  password_confirmation: '111111',
  is_admin: 'false'
])
puts 'Admin account is created successfully!'

for i in 1..10 do
  Job.create!([
    company: 'Google',
    category: 'Engineering & Technology',
    title: 'Software Engineer',
    description: 'Google aspires to be an organization that reflects the globally diverse audience that our products and technology serve. We believe that in addition to hiring the best talent, a diversity of perspectives, ideas and cultures leads to the creation of better products and services.',
    wage_upper_bound: rand(40..79) * 1000,
    wage_lower_bound: rand(20..39) * 1000,
    city: 'San Francisco, CA',
    address: '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA',
    is_hidden: 'false'
  ])
end

for i in 1..10 do
  Job.create!([
    company: 'Twitter',
    category: 'Data Science & Analytics',
    title: 'Business Insights Analyst',
    description: 'Do you love Data? Twitter users generate many terabytes of data every day.',
    wage_upper_bound: rand(40..79) * 1000,
    wage_lower_bound: rand(20..39) * 1000,
    city: 'San Francisco, CA',
    address: '1355 Market St, San Francisco, CA 94103, USA',
    is_hidden: 'false'
  ])
end

for i in 1..3 do
  Job.create!([
    company: 'Facebook',
    category: 'Business Development Sales',
    title: 'Client Solutions Manager, Ecommerce',
    description: 'The Client Solutions Manager for Facebook’s Global Marketing Solutions team is a strategic and enthusiastic solution-driver who puts our customers at the core of everything we do.',
    wage_upper_bound: rand(40..79) * 1000,
    wage_lower_bound: rand(20..39) * 1000,
    city: 'San Francisco, CA',
    address: '1 Hacker Way, Menlo Park, California, CA 94025, USA',
    is_hidden: 'false'
  ])
end

for i in 1..5 do
  Job.create!([
    company: 'Amazon',
    category: 'Audio / Video / Photography Production',
    title: 'Media Quality Manager',
    description: 'Amazon is looking for a Media Quality Manager (MQM) who will be responsible for the development, execution and maintenance of the Total Media Quality Management (TMQM) program for global Amazon studios as well as Vendor and Seller media submissions.',
    wage_upper_bound: rand(40..79) * 1000,
    wage_lower_bound: rand(20..39) * 1000,
    city: 'San Francisco, CA',
    address: '207 Boren Ave N, Seattle, WA 98109, USA',
    is_hidden: 'false'
  ])
end

for i in 1..5 do
  Job.create!([
    company: 'Uber',
    category: 'Accounting, Finance & Accounting',
    title: 'Accounting Manager',
    description: 'Passionate about high-growth startups and have very strong accounting skills?  Are you a proven team player, strategic thinker and executor?  If you answered yes to the above questions let’s talk!',
    wage_upper_bound: rand(40..79) * 1000,
    wage_lower_bound: rand(20..39) * 1000,
    city: 'San Francisco, CA',
    address: '555 Market Street, San Francisco, CA 94105, USA',
    is_hidden: 'false'
  ])
end
