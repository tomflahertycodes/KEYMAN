# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning database"
Job.destroy_all
Consultant.destroy_all
Client.destroy_all


puts "creating consultants"
consultant1 = Consultant.new(email: 'ben@gmail.com', password:123456, name:'ben')
consultant1.save!
consultant2 = Consultant.new(email: 'guy@gmail.com', password:123456, name:'guy')
consultant2.save!


puts "creating clients"
client1 = Client.new(email: 'dan@gmail.com', password:123456, name:'dan')
client1.save!
client2 = Client.new(email: 'curtis@gmail.com', password:123456, name:'curtis')
client2.save!

@clientid = client1.id
@clientid2 = client2.id

@consultantid = consultant1.id
@consultantid2 = consultant2.id

puts "creating jobs"

job1 = Job.new(
  role: "Site Engineer",
  location: "london",
  contract: "contract",
  rate: 220 ,
  sector: "construction",
  consultant_id: consultant1.id,
  client_id: client2.id
)
job1.save!

job2 = Job.new(
  role: "Project Manager",
  location: "london",
  contract: "contract",
  rate: 350 ,
  sector: "construction",
  consultant_id: consultant2.id ,
  client_id: client1.id
)
job2.save!

puts "done"
