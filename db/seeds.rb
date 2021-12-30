# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

consultant1 = Consultant.new(email: 'ben@gmail.com', password:123456, name:'ben')
consultant2 = Consultant.new(email: 'guy@gmail.com', password:123456, name:'guy')

consultant1.save!
consultant2.save!

client1 = Client.new(email: 'dan@gmail.com', password:123456, name:'dan')
client2 = Client.new(email: 'curtis@gmail.com', password:123456, name:'curtis')

client1.save!
client2.save!

job1 = Job.new(
  role: "Site Engineer",
  location: "london",
  contract: "contract",
  rate: 220 ,
  sector: "construction",
  consultant_id: 1 ,
  client_id: 1
)
job1.save!

job2 = Job.new(
  role: "Project Manager",
  location: "london",
  contract: "contract",
  rate: 350 ,
  sector: "construction",
  consultant_id: 1 ,
  client_id: 1
)
job2.save!
