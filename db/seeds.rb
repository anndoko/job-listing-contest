
#--------- create accounts ---------
create_account = User.create([
  name: 'Boss',
  email: 'admin@gmail.com',
  password: '111111',
  password_confirmation: '111111',
  is_admin: 'true'
])

create_account = User.create([
  name: 'Anndo',
  email: 'anndo@gmail.com',
  password: '111111',
  password_confirmation: '111111',
  is_admin: 'false'
])
puts 'Accounts created.'

#--------- create companies ---------
Company.create!(
  title: 'Google',
  remote_image_url: ("https://ww4.sinaimg.cn/large/006tNc79gy1ff8qsdwmahj302s02sdfs.jpg"),
  location: '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA'
  )

  Company.create!(
    title: 'Twitter',
     remote_image_url: ("https://ww1.sinaimg.cn/large/006tNc79gy1ff8qscn55lj3028028741.jpg"),
    location: '1355 Market St, San Francisco, CA 94103, USA'
    )

  Company.create!(
    title: 'Facebook',
     remote_image_url: ("https://ww2.sinaimg.cn/large/006tNc79gy1ff8qse303qj302s02sgld.jpg"),
    location: '1 Hacker Way, Menlo Park, California, CA 94025, USA'
    )

  Company.create!(
    title: 'Pinterest',
     remote_image_url: ("https://ww2.sinaimg.cn/large/006tNc79gy1ff8qsctphfj30e80e8q34.jpg"),
    location: '23 Whitestone Way, Croydon, CR0 4WF, UK'
    )

  Company.create!(
    title: 'Uber',
     remote_image_url: ("https://ww4.sinaimg.cn/large/006tNc79gy1ff8qscfsvrj302s02s741.jpg"),
    location: '555 Market Street, San Francisco, CA 94105, USA'
    )

  Company.create!(
    title: 'Amazon',
     remote_image_url: ("https://ww4.sinaimg.cn/large/006tNc79gy1ff8qsdxofsj30740740sr.jpg"),
    location: '207 Boren Ave N, Seattle, WA 98109, USA'
    )

puts 'Companies created.'


#--------- create jobs ---------
for i in 1..10 do
  Job.create!([
    company_id: 1,
    category: 'Engineering & Technology',
    title: 'Software Engineer',
    description: 'Google aspires to be an organization that reflects the globally diverse audience that our products and technology serve. We believe that in addition to hiring the best talent, a diversity of perspectives, ideas and cultures leads to the creation of better products and services.',
    wage_upper_bound: rand(40..79) * 1000,
    wage_lower_bound: rand(20..39) * 1000,
    city: 'San Francisco, CA, USA',
    address: '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA',
    is_hidden: 'false'
  ])
end

for i in 1..10 do
  Job.create!([
    company_id: 2,
    category: 'Data Science & Analytics',
    title: 'Business Insights Analyst',
    description: 'Do you love Data? Twitter users generate many terabytes of data every day.',
    wage_upper_bound: rand(40..79) * 1000,
    wage_lower_bound: rand(20..39) * 1000,
    city: 'San Francisco, CA, USA',
    address: '1355 Market St, San Francisco, CA 94103, USA',
    is_hidden: 'false'
  ])
end

for i in 1..3 do
  Job.create!([
    company_id: 3,
    category: 'Business Development Sales',
    title: 'Client Solutions Manager, Ecommerce',
    description: 'The Client Solutions Manager for Facebook’s Global Marketing Solutions team is a strategic and enthusiastic solution-driver who puts our customers at the core of everything we do.',
    wage_upper_bound: rand(40..79) * 1000,
    wage_lower_bound: rand(20..39) * 1000,
    city: 'San Francisco, CA, USA',
    address: '1 Hacker Way, Menlo Park, California, CA 94025, USA',
    is_hidden: 'false'
  ])
end

for i in 1..5 do
  Job.create!([
    company_id: 6,
    category: 'Audio / Video / Photography Production',
    title: 'Media Quality Manager',
    description: 'Amazon is looking for a Media Quality Manager (MQM) who will be responsible for the development, execution and maintenance of the Total Media Quality Management (TMQM) program for global Amazon studios as well as Vendor and Seller media submissions.',
    wage_upper_bound: rand(40..79) * 1000,
    wage_lower_bound: rand(20..39) * 1000,
    city: 'San Francisco, CA, USA',
    address: '207 Boren Ave N, Seattle, WA 98109, USA',
    is_hidden: 'false'
  ])
end

for i in 1..4 do
  Job.create!([
    company_id: 5,
    category: 'Accounting, Finance & Accounting',
    title: 'Accounting Manager',
    description: 'Passionate about high-growth startups and have very strong accounting skills?  Are you a proven team player, strategic thinker and executor?  If you answered yes to the above questions let’s talk!',
    wage_upper_bound: rand(40..79) * 1000,
    wage_lower_bound: rand(20..39) * 1000,
    city: 'San Francisco, CA, USA',
    address: '555 Market Street, San Francisco, CA 94105, USA',
    is_hidden: 'false'
  ])
end

for i in 1..6 do
  Job.create!([
    company_id: 4,
    category: 'Marketing and Community',
    title: 'Digital Marketing Manager',
    description: 'As the Digital Marketing Manager, you will work with the UK Marketing and Community team to ensure the right content and messages reach the right Pinners and beyond.',
    wage_upper_bound: rand(40..79) * 1000,
    wage_lower_bound: rand(20..39) * 1000,
    city: 'London, UK',
    address: '23 Whitestone Way, Croydon, CR0 4WF, UK',
    is_hidden: 'false'
  ])
end

puts 'Jobs created.'
