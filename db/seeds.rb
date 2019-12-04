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
Location.destroy_all

fl = Location.create(name: "Flordia")
ga = Location.create(name: "Georgia")
md = Location.create(name: "Maryland")
me = Location.create(name: " Maine")
# fl = Location.create(name: "Flordia")
# ga = Location.create(name: "Georgia")
# md = Location.create(name: "Maryland")
# me = Location.create(name: " Maine")
# fl = Location.create(name: "Flordia")
# ga = Location.create(name: "Georgia")
# md = Location.create(name: "Maryland")
# me = Location.create(name: " Maine")
# fl = Location.create(name: "Flordia")
# ga = Location.create(name: "Georgia")
# md = Location.create(name: "Maryland")
# me = Location.create(name: " Maine")

# fl

course7 = Course.create(location_id: fl.id, par: 72, name:"Crescent Oaks", description:"The championship 6,865-yard, 18-hole golf course at Crescent Oaks was designed by renowned golf course architect
Steve Smyers with the technical expertise of Jim Colbert. The well-bunkered, traditional-style course is carved from
scenic woodlands, gently rolling hills and picturesque lakes.")
course8 = Course.create(location_id: fl.id, par: 72, name:"North Shore", description:"This Mike Dasher layout features the “Modern” nine which is reminiscent of links-style golf and winds through
native wetlands. The “Classic” nine is carved through a century-old oak grove creating a Carolina feel and an enjoyably
unique setting for your finishing holes. North Shore is a magnificent 18 hole, par 72 golf course in Orlando, FL with 
4 sets of tees, for recreational and novice golfers while advanced players can test their skills on 6900 yards of challenging golf.")
course9 = Course.create(location_id: fl.id, par: 72, name:"Cypress Creek", description:"Designed by Dean Refram and Steven R. Smyers, ASGCA, Cypress Creek Golf Club opened in 1989. Steve Smyers,
a minimalist architect, designed Cypress Creek around the natural surroundings the land had to offer. ")
course10 = Course.create(location_id: fl.id, par: 70, name:"Saddleback", description:"As you travel the green fairways set in a hammock of cypress and oak, the natural beauty of the par 70 Saddlebrook 
Course will transport you back in time to the Florida of the Conquistadors. The signature hole, the 425-yard 18th,
magnifies this sensation. The drive must be sent down an emerald ribbon between stands of towering cypress, whose
branches are adorned with Spanish moss, swaying gently in the breeze. Three white-faced bunkers in the landing area
are framed by the lush green of the fairway. Two solid, aggressive shots will reach the green and award the player
with par. Whatever the score, this Arnold Palmer golf course will provide a relaxing and satisfying experience that
will keeping you coming back to tee off.")

# ga

course11 = Course.create(location_id: ga.id, par: 72, name:"Augusta National", description:"Founded in 1932 by Bobby Jones and Clifford Roberts on the 365-acre site of a former nursery called Fruitland. 
Jones sought to create a world-class winter golf course in his native state of Georgia")
course12 = Course.create(location_id: ga.id, par: 70, name:"Stonemount", description:"Laid out over gently rolling and cantered fairways of premier Bermuda grass and greens of immaculate bent grass.
The par 70 layout stretches 6,863 yards, and is challenging with its narrow fairways,
strategically placed bunkers and numerous stands of Georgia pines.")
course13 = Course.create(location_id: ga.id, par: 72, name:"The Frog", description:"Designed by legendary golf course architect Tom Fazio, The Frog is recognized among the top courses in Georgia.
Located off I-20 in Villa Rica, The Frog is a masterpiece complete with bentgrass greens, expansive bunkering
and has also attained status as an Audubon Cooperative Sanctuary.")

# me

course14 = Course.create(location_id: me.id, par: 71, name:"Poland Spring Resort", description:"Poland Spring was the first golf course built at a resort in America. We are honored to be included as a Golf Digest Place to Play and Top 100 of New England Golf courses. Stay and Play packages with unlimited golf on our Donald Ross designed course with cart for 18 holes, two buffet meals a day, comfortable room, nightly entertainment, grass tennis courts, outdoor pool, bocce and more.")
course15 = Course.create(location_id: me.id, par: 72, name:"Sunday River", description:"One of the premier courses in New England. Surrounded by miles of untouched wilderness and towering peaks, eighteen fairways offer stunning vistas as they wind through the Maine woods and over dramatic elevation changes. The setting is rivaled only by the unique design of the course, following the natural landscape and striking the perfect balance between challenge and playability.")
course16 = Course.create(location_id: me.id, par: 71, name: "Boothbay", description:"The perfect Maine golf course, featuring breathtaking vistas, challenging holes and a sea breeze blowing
off the ocean. BHCC’s 18 championship holes are truly a “Pure Maine” golfing experience. With incredible
conditioning and beautiful landscaping, it’s a course not to be missed. ")

# md
course1 = Course.create(location_id: md.id, name: "Breton Bay", par: 71, description:  "THIS IS A GOLF COURSE")
course2 = Course.create(location_id: md.id, name: "Wicomico Shores", par: 70, description: "THIS IS A GOLF COURSE")
course3 = Course.create(location_id: md.id, name: "White Plains", par: 72, description: "THIS IS A GOLF COURSE")
course4 = Course.create(location_id: md.id, name: "Lake Presidential", par: 42, description: "THIS IS A GOLF COURSE")
course5 = Course.create(location_id: md.id, name: "Swan Point", par: 73, description: "THIS IS A GOLF COURSE")
course6 = Course.create(location_id: md.id, name: "Mellomar", par: 75, description: "THIS IS A GOLF COURSE")
course17 = Course.create(location_id: md.id, par: 72, name:"Chesapeake Hills", description:"Chesapeake Hills features 6,545 yards of golf from the longest tees for a par of 72. The course rating is 72.3 and
it has a slope rating of 126. Designed by Jim Thompson, Chesapeake Hills opened in 1968. The golf course features Bermuda grass
fairways on gently rolling hills surrounded by towering trees. Several lakes and creeks meander through the course, providing 
scenic beauty and golfing challenges.")
course18 = Course.create(location_id: md.id, par: 72, name: "Renditions", description:"     Renditions features replicas of holes from major championship venues, all located in a quiet and serene corner of 
Anne Arundel County, just minutes away from the Capital Beltway and Annapolis. With the Patuxent River flowing nearby, the setting is perfect for a unique,
grand slam golf experience. Your day begins with a series of three parkland holes, all replicas of U.S. Open or PGA Championship venues.
Holes #4 and #5 transport you “across the pond” for a taste of The Open Championship. The next three holes bring you back to America 
for a tour of “Amen Corner”, possibly the most famous series of holes from The Masters Tournament. And the day is just beginning.")
    
    location_list = [fl.id, ga.id, md.id, me.id]
   10.times do
        Course.create(
            location_id: location_list.sample,
            par: rand(74..80),
            description: Faker::Lorem.paragraph(sentence_count: rand(7..20)),
            name: Faker::Company.name 
        )
    end
    
    
    
    
    
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