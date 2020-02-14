# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
TaskList.create(task: "Check if seeding works with existing capistrano seetup", priority: 6)
TaskList.create(task: "Verify if this works with out a push to github (unlikely as it may sound", priority: 4)
TaskList.create(task: "Get this running right away and delete this one if all goes well", priority: 7)
TaskList.create(task: "Now we are good to go with Capistrano and deploying our app to AWS!", priority: 8)
TaskList.create(task: "Start the deployment process and keep this instance until you are done", priority: 9)