# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all
User.destroy_all
Review.destroy_all

course1 = Course.create(name: "Breton Bay", par: 71, description:  "THIS IS A GOLF COURSE")
course2 = Course.create(name: "Wicomico Shores", par: 70, description: "THIS IS A GOLF COURSE")
course3 = Course.create(name: "White Plains", par: 72, description: "THIS IS A GOLF COURSE")
course4 = Course.create(name: "Lake Presidential", par: 42, description: "THIS IS A GOLF COURSE")
course5 = Course.create(name: "Swan Point", par: 73, description: "THIS IS A GOLF COURSE")
course6 = Course.create(name: "Mellomar", par: 75, description: "THIS IS A GOLF COURSE")

user1 = User.create(name: 'Joe', handicap: 12)
user2 = User.create(name: 'Rebecca', handicap: 23)
user3 = User.create(name: 'Steven', handicap: 32)
user4 = User.create(name: 'Gary', handicap: 35)
user5 = User.create(name: 'Karen', handicap: 7)
user6 = User.create(name: 'Frank', handicap: 56)
user7 = User.create(name: 'Tiger', handicap: 0)

Review.create(user: user2, course: course4, review_text: " Perfect course and, good service ", rating: 5)
Review.create(user_id: user1.id, course_id: course1.id, review_text: " Could be better ", rating: 2)
Review.create(user_id: user4.id, course_id: course2.id, review_text: " Pace was slow, experience could've been better ", rating: 3)
Review.create(user_id: user5.id, course_id: course6.id, review_text: " Amazing Staff", rating: 5)
Review.create(user_id: user3.id, course_id: course3.id, review_text: " meh ", rating: 2)
Review.create(user_id: user1.id, course_id: course4.id, review_text: " I played good here ", rating: 4)
Review.create(user_id: user7.id, course_id: course5.id, review_text: " Best course ive been to", rating: 5)