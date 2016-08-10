# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
["tags", "users", "groups", "events", "titles", "activities"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end
########CREATE THE TAGS#################################################
t1 = Tag.create(name: "Photography")
t2 = Tag.create(name: "Volunteering")
t3 = Tag.create(name: "Travel")
t4 = Tag.create(name: "Automotive")
t5 = Tag.create(name: "Entertainment")
t6 = Tag.create(name: "Arts")
t7 = Tag.create(name: "Fitness")
t8 = Tag.create(name: "Business")
t9 = Tag.create(name: "Technology")
t10 = Tag.create(name: "Education")
t11 = Tag.create(name: "Food")
t12 = Tag.create(name: "Garden")
t13 = Tag.create(name: "Games")
t14 = Tag.create(name: "Outdoors")
t15 = Tag.create(name: "Shopping")
t16 = Tag.create(name: "Sports")
t17 = Tag.create(name: "Science")
t18 = Tag.create(name: "Industrial")
########CREATE THE USERS################################################
u1 = User.create(
  email: "andyxhliu@gmail.com",
  password: "password",
  password_confirmation: "password",
  username: "andyxhliu", 
  first_name:"Xianghua", 
  last_name:"Liu",
  description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
  profile_image: File.open(Rails.root + 'app/assets/images/simplestreetPhotography.jpg')
)
u2 = User.create(
  email: "bob@me.com",
  password: "password",
  password_confirmation: "password",
  username: "BobJeorge001", 
  first_name:"Bob", 
  last_name:"Jeorge",
  description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
  profile_image: File.open(Rails.root + 'app/assets/images/Bob.jpg')
)
u3 = User.create(
  email: "bruce@me.com",
  password: "password",
  password_confirmation: "password",
  username: "Brucelee", 
  first_name:"Bruce", 
  last_name:"Lee",
  description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
  profile_image: File.open(Rails.root + 'app/assets/images/Bruce.jpg')
)
u4 = User.create(
  email: "james@me.com",
  password: "password",
  password_confirmation: "password",
  username: "JamesxhLin", 
  first_name:"James", 
  last_name:"Lin",
  description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
  profile_image: File.open(Rails.root + 'app/assets/images/user.png')
)
########CREATE THE GROUPS###############################################
g1 = Group.create(
  title:"Simple Street Photography", 
  location:"London",
  group_image: File.open(Rails.root + 'app/assets/images/simplestreetPhotography.jpg'),
  description:"Interested in photography? Looking for a friendly, sociable group? Our members range from novices to professional photographers, all with a shared interest in photography and exploring different aspects of London. As everyone has such diverse interests - eg portraits, abstract, architecture - most of our sessions don't have set themes, allowing us see what inspires us each time. All types of cameras are welcome, from smartphones to DSLRs. If you'd like to read more about the group and how it works, please do read About This Group, which hopefully covers every question which people might ask! As Meetup charges me to run this group, I do have to pass on the cost to the members, which is a nominal £3 per event, or more for workshops and classes. Our sessions are suitable for all levels from beginners to professionals. They include: regular general sessions which are suitable for all, and usually involve exploring a specific area or event adhoc classes, aimed at novices and less experienced photographers, which cover camera basics, 1:1 tuition and portfolio feedback workshops, which cover specific skills or techniques performances, such as Lucha Britannia, cabaret and any other shows we might be invited to (subject to interest) theatrical or performance-based shoots, eg studio and location work with dancers, circus artists and more day trips outside London We're also a very friendly group, which is important, as street photography is best enjoyed with other people! Because we're all coming from different parts of London (or beyond), we meet in a cafe or pub beforehand, so that not only do we have time to wait for everyone to arrive, but people can also compare cameras, get feedback on what settings to use, any other advice and generally chat, and we also finish up in a pub or cafe to catch up with each other afterwards, and look at each other's photos etc. The groups are always a mixture of regulars and newcomers, so everyone's welcome! Informal tuition is available during the general sessions, either from myself or other members, who are always happy to help each other; if you want more structured tuition, then please attend one of the classes or workshops. Lens cleaning is also offered - I'm a bit obsessive about lens cleanliness (thanks to this group), so dusty and dirty lenses will be subjected to a spring clean. You have been warned! The locations are sometimes suggested by members, or selected for certain members - hence those profile questions when you join the group! We're currently doing: weekly weekend afternoon shoots, mostly on Sundays but also on Saturdays (we only do weekend mornings on special occasions, or where an afternoon start isn't feasible) weekly midweek sessions on Wednesday evenings monthly drinks The frequency is subject to change, as and when more events crop up. You can also find us online at www.simplestreetphoto.com, which has links to our Facebook and Flickr groups, as well as our Twitter account - share your photos and join in the conversation!"
)
g2 = Group.create(
  title:"London Volunteering Social", 
  location:"London",
  group_image: File.open(Rails.root + 'app/assets/images/volunteering.jpeg'),
  description:"Join this meetup to experience amazing volunteering opportunities, socialise and make new friends. This is a great place to start making a real difference to your own life and the lives of those around you. 

Three key reasons to join this volunteer group....

1)  Being part of this volunteering team allows you to meet new people and make new friends. This is a great chance to socialise with supportive, like-minded people who share your passions.

2) Take a break from your work and busy lifestyle to enjoy meaningful experiences. Feel good by making positive changes.  Help others less fortunate who don’t have a voice.

3) Gain new skills and experiences and an enhanced CV. This can significantly improve your employment prospects and give you a better idea of what jobs you’re suited to and what makes you happy.  

People choose to volunteer for a variety of reasons, regardless of the motivation, what unites them all is that they find it both challenging and rewarding. So, if you live in London and want to start volunteering and meeting new people this meetup is the ideal place to start!"
)
g3 = Group.create(
  title:"London Photographic Workshop", 
  location:"London",
  group_image: File.open(Rails.root + 'app/assets/images/workshop.jpeg'),
  description:"Welcome to LONDON PHOTOGRAPHIC WORKSHOPS - The relaxed and informal atmosphere of our London studio offers the perfect setting for photographers of all ages and levels of experience to come along, chat, share ideas and get creative. You’ll meet people from all walks of life all with a common goal; to take better pictures. Photography is much more than a hobby; the further you delve into it, the more hooked you’re going to get and the more hooked you get, the more you want to know !

Our Ethos

More than anything else, photography is fun; all our activities are designed to bring people together in an environment which stimulates discussion, interaction and creativity. Come along to one of our sessions and we guarantee that you’ll meet plenty of kindred spirits, learn new skills and leave with some incredible images.

Our Themes

To capture that perfect image, you’ll need the right tuition and strong concept  to enhance Your visual storytelling process, the right models, make-up and styling and it’s all brought together using clever lighting techniques to create the mood. With a little help from our friends in the industry, our workshops cover all of these areas.

We’ll help you to understand all the creative and technical work that goes on behind-the-scenes at a photo shoot before you press the shutter button and produce that magical image.

What equipment will you need ?

Don’t rush out and buy the latest camera; bring along what you’ve already got and we’ll show you how to get the most out of it. Whether you’re using a self-built camera or the latest state-of-the-art technology, with the right technique you’ll be producing sensational results in no time! All you need is a love of photography and a desire to learn; we’ll do the rest ! 

  Our Programmes

  Every month LPW offers a host of events which will get you itching to grab your camera and start snapping. You’ll meet people from all walks of life and with a wide range of photography experience from complete beginners to professionals so there are lots of opportunities to exchange ideas and learn from each other as well as from us. Our events are fun, informative and affordable.

  Workshops - they have quickly become amongst the most sought after photography events in London. Our sessions are delivered by some of the industry’s most respected professionals led by internationally renowned photographer and photography author, Luca Monti. We’ll feed your passion for photography and give you the technical and creative skills you need to take better pictures. We cover a broad range of topics such as fashion, nude, boudoir, creative, still life and portrait photography. You’ll learn all the skills you need to take photographs from an idea to an image. Come along to one of these informal, fun sessions; we guarantee you’ll want to come back for more.

  Evening Workshops - come over to our studio after a day at the office and enjoy one of these friendly, chilled-out events. You’ll meet plenty of like-minded people and pick up lots of tips. We’re always thinking up new concepts and introducing new models at these sessions to expand your portfolio and get your creativity flowing.

  Full Day Workshops - There’s a reason why these events are so popular; they’re just awesome! The day begins with a lighting and styling brief and then it’s off you go to come up with your concept, create your mood board and plan your shoot. These days are relaxed and enjoyable; an absolute must for anybody who is serious about improving their photographic know-how.

  Photographic Courses - The goals You want to achieve are more ambitious ? Are You looking for a deeper understanding of the photographic language ? Do You, just simply, want to learn more on a specific subject of Photography ? Courses are just the same of our fabulous workshops extended over more sessions just to cover in depth every aspect of the photographic art. "
)
g4 = Group.create(
  title:"Volunteering & Vacation", 
  location:"London",
  group_image: File.open(Rails.root + 'app/assets/images/volunteeringvacation.jpg'),
  description:"slide1
Experience the Caribbean
Feel the rhythm of the Caribbean! Join us for an amazing volunteering experience on the islands of Jamaica or Trinidad and Tobago. Discover their natural beauty and stunning landscape while supporting a community project, connecting with local people and giving back.

V2 partners with community-led sustainable projects to offer volunteers enriching, meaningful and rewarding experiences coupled with an authentic Caribbean vacation.

We welcome volunteers from all over the world with varied skills, experiences and educational backgrounds. Make your next holiday count!"
)
g5 = Group.create(
  title:"European Travel", 
  location:"London",
  group_image: File.open(Rails.root + 'app/assets/images/europeantavel.jpg'),
  description:"Meet fellow travel enthusiasts near you! Come to a Travel Meetup to relive adventures, share photos from around the world and get first-hand recommendations on new exciting destinations and events. Find fun, laughs -- and maybe even a new travel buddy! 

Our Meetups can be scheduled by any member and will range from Social gatherings in London, to days out within the UK, holidays abroad right through to adventures to European festivals & events! Get involved! ;-)"
)
g6 = Group.create(
  title:"London Film Network", 
  location:"London",
  group_image: File.open(Rails.root + 'app/assets/images/londonfilmnetwork.jpg'),
  description:"London Film Network is a Film network of professionals in the TV and Film industry. This network is designed to create an professional environment of creativity and productivity where crew and creators collaborate to create meaningful narratives throughout many formats, including fiction, documentary and Television productions.

One of the main principles of The London Film Network is creating a platform for first time filmmakers, with a dedicated program to improve necessary skills and knowledge of the industry. So whether your experienced or just have a passion for films, feel free to join us to be involved in the production processes, collaborate on productions, work in an professional environment and most importantly to expand your network.

London Film Network: Create - Communicate- Collaborate.
"
)

########CREATE THE EVENTS###############################################
e1 = Event.create(
  title: "Brixton Village and Market",
  start_date: "2016-08-15", 
  end_date: "2016-08-16", 
  location: "Brixton", 
  description: "Brixton is the place to see if you want to photograph urban multiculturalism and young middle class gentrification co-existing in a remarkable mix. Everything is photogenic, from the decay to the sheer exuberance of colour and street style. Compared to the culinary homogeneity of Borough market et al, Brixton is a sensory fiesta. The air is thick with the sizzle of jerk chicken stalls, tinny reggae riddims and yam-based price disputes while the multi-coloured hues of exotic fish displays glimmer like a whiffy rainbow. And for every hipster rammed into one of the (justifiably) rave reviewed eateries in the newly trendified Brixton Village (that's the covered arcades), a stack of bargain basement exotic produce still teeters like a nutritious Jenga set. The days may be gone where traders plunged fists into a tank of squirming catfish and decapitated them on the spot, and a lot of stalls marine offerings aren't the freshest, but Dagon's in Brixton Village offers seafood that's as bright-eyed and cheap as you like. For quality Borough-rivalling, European produce, there's the fromagerie and baked offerings of Atlantic Road's Continental Delicatessen.  At lunch time, you can grab a taste of old Brixton Market at busy little Colombian spot Restaurante Santafereno, whose faded decor and gut-bustingly large portions of meat, rice and plantain predate the Brixton Village revamp. And no visit is complete without the manic energy of the rammed little corridor of a shop that is Nour's on Electric Avenue. Check out the impossibly cheap, bouquet-sized bunches of herbs and interesting Middle Eastern produce.  On the weekends, the weekday food market is joined by an alternating market on Station Road. Head here on Saturdays to catch the rotating monthly vintage clothes flea, craft market, and bakers market (10am-5pm). On Sundays, the road turns into a farmers' market. Please pay £5.00 on the day", 
  event_image: File.open(Rails.root + 'app/assets/images/brixton.jpg'), 
  group_id: 1,
)
e2 = Event.create(
  title: "Grand Canyon 3 days photography",
  start_date: "2016-08-20", 
  end_date: "2016-08-21", 
  location: "Grand Canyon", 
  description: "Take the time to enjoy an in-depth experience of Arizona’s natural beauty on a 3-day tour with overnights in Sedona and the Grand Canyon. Admire the red rock country of Sedona and explore the shops and galleries in town. Then marvel at the grandeur of the Grand Canyon as you approach the South Rim and stop at spectacular viewpoints. This semi-independent tour includes some planned activities with a local guide, and includes transportation and accommodation. Enjoy ample free time to explore on your own and customize your experience. Learn about the natural and human history of Sedona and the Grand Canyon as you travel to top sites with your knowledgeable guide. Stay the first night in Sedona and see a Navajo trading post, the Painted Desert, red rock country of Arizona, Oak Creek Canyon and many great spots in town. The second day, continue to the Grand Canyon and have ample time to soak up the majesty of this natural wonder. Travel in a climate-controlled van with a guide who shares informative commentary about the places you visit. Includes two nights of accommodation, transportation, and seamless transfers between locations. In addition, have time at your leisure to see the sights that most interest you. ", 
  event_image: File.open(Rails.root + 'app/assets/images/Grand.jpg'), 
  group_id: 1,
)
e3 = Event.create(
  title: "Photo Guided Workshop",
  start_date: "2016-09-15", 
  end_date: "2016-09-16", 
  location: "London", 
  description: "We spend our photographic day on location developing your skills to take both landscape & portrait compositions whilst exploring the historic Regent Canal on a beautiful journey down the I852 Islington Tunnel on a private canal boat, SEE THE WILD LIFE & THEN THE  amazing regenerated urban surrounds of Kings Cross - it's not permitted to photograph there without authorisation - We have BEEN GIVEN SPECIAL PERMISSION TO PHOTOGRAPH FOR THIS EVENT.    ", 
  event_image: File.open(Rails.root + 'app/assets/images/photoguidedworkshop.jpeg'), 
  group_id: 1,
)
e4 = Event.create(
  title: "The full British Seaside Experience",
  start_date: "2016-10-15", 
  end_date: "2016-10-16", 
  location: "London", 
  description: "Brighton... legendary seaside experience. One full pier..the old lanes... the diversity and majesty of old Victorian England sitting alongside the 21st Century post Brexit culture that is modern England.. Come photograph and explore. Meet at London Bridge at 08.30 for a 09.09 departure and return to Victoria Station for 18.00 that evening.. Group save tickets will be in the region of £10.0 return (to be confirmed)..", 
  event_image: File.open(Rails.root + 'app/assets/images/brighton.jpeg'), 
  group_id: 1,
)
e5 = Event.create(
  title: "Canary Wharf Jazz Festival",
  start_date: "2016-11-15", 
  end_date: "2016-11-16", 
  location: "London", 
  description: "London’s largest and most respected jazz festival returns to Canada Square Park this summer, with live jazz in one beautiful setting across three days. Soweto Kinch, Omar Puente and Carleen Anderson are just some of those taking to the stage, as world-class artists and rising stars appear in back-to-back performances.

So whether you are completely new to jazz, a committed aficionado or just love an outdoor concert don’t miss this summer’s festival as they present a programme of new and nostalgic jazz from every genre. And photograph it...

Have your Oyster Card topped up as we'll be catching a train both there and back.

Please pay £5 on the day.", 
  event_image: File.open(Rails.root + 'app/assets/images/canary-wharf.jpg'), 
  group_id: 1,
)
e6 = Event.create(
  title: "Help the homeless at Ealing soup kitchen",
  start_date: "2016-09-08", 
  end_date: "2016-09-11", 
  location: "London", 
  description: "This volunteering event is called the Acton Hill Community Meal and it runs on Saturdays from 11 am to 3:30 pm.  

Volunteers will help prepare and cook the meals as well as serve the people. For the last four weeks, the soup kitchen has been particularly short of volunteers. They traditionally offer a soup followed by dinner for up to fifty or so people. 

The location is easy to find from Acton Central Train Station. However, I will be waiting at Ealing Broadway Train Station at 10.30 am for any volunteers that would prefer to travel with me on a 10 minute bus journey to the soup kitchen.

Even though this event is being held at a church people from all religions and non-religious people (like me) are more than welcome! Thanks guys, looking forwards to seeing you there!", 
  event_image: File.open(Rails.root + 'app/assets/images/homeless.jpg'), 
  group_id: 4,
)

#################################################################################################################################################################################For Each Event###############################################################

########CREATE TITLE1###################################################
title1 = Title.create(
  name: "Day 1: Phoenix — Sedona "
)
e1.titles << title1
activity1 = Activity.create(
  content: "After morning pickup at your hotel in Phoenix, drive north for about two hours, traveling through the Sonoran Desert and into the red rock country of Sedona.",
  title_id: 1,
  start: "08:30:00"
)
activity2 = Activity.create(
  content: "See highlights of the area as you approach Sedona, where you have free time in the afternoon and evening explore the town’s shops, galleries and restaurants at your leisure..",
  title_id: 1,
  start: "12:30:00"
)
activity3 = Activity.create(
  content: "A wilderness excursion by Jeep or a 2.5-hour sightseeing tour by minivan. If you enjoy hiking, many excellent trails start nearby.",
  title_id: 1,
  start: "16:30:00"
)
title1.activities << activity1
title1.activities << activity2
title1.activities << activity3
########CREATE TITLE2###################################################
title2 = Title.create(
  name: "Day 2: Sedona — Grand Canyon "
)
e1.titles << title2
activity4 = Activity.create(
  content: "After morning pickup at your hotel in Phoenix, drive north for about two hours, traveling through the Sonoran Desert and into the red rock country of Sedona.",
  title_id: 2,
  start: "16:30:00"
)
activity5 = Activity.create(
  content: "See highlights of the area as you approach Sedona, where you have free time in the afternoon and evening explore the town’s shops, galleries and restaurants at your leisure..",
  title_id: 2,
  start: "12:30:00"
)
activity6 = Activity.create(
  content: "A wilderness excursion by Jeep or a 2.5-hour sightseeing tour by minivan. If you enjoy hiking, many excellent trails start nearby.",
  title_id: 2,
  start: "16:30:00"
)
title2.activities << activity4
title2.activities << activity5
title2.activities << activity6
########CREATE TITLE3###################################################
title3 = Title.create(
  name: "Day 3: Grand Canyon — Phoenix:"
)
e1.titles << title3
activity7 = Activity.create(
  content: "After morning pickup at your hotel in Phoenix, drive north for about two hours, traveling through the Sonoran Desert and into the red rock country of Sedona.",
  title_id: 3,
  start: "08:30:00"
)
activity8 = Activity.create(
  content: "See highlights of the area as you approach Sedona, where you have free time in the afternoon and evening explore the town’s shops, galleries and restaurants at your leisure..",
  title_id: 3,
  start: "12:30:00"
)
activity9 = Activity.create(
  content: "A wilderness excursion by Jeep or a 2.5-hour sightseeing tour by minivan. If you enjoy hiking, many excellent trails start nearby.",
  title_id: 3,
  start: "16:30:00"
)
title3.activities << activity7
title3.activities << activity8
title3.activities << activity9


#################################################################################################################################################################################For Each Event###############################################################
#################################################################################################################################################################################For Each Event###############################################################

########CREATE TITLE1###################################################
title1 = Title.create(
  name: "Day 1: Phoenix — Sedona "
)
activity1 = Activity.create(
  content: "After morning pickup at your hotel in Phoenix, drive north for about two hours, traveling through the Sonoran Desert and into the red rock country of Sedona.",
  title_id: 1,
  start: "08:30:00"
)
activity2 = Activity.create(
  content: "See highlights of the area as you approach Sedona, where you have free time in the afternoon and evening explore the town’s shops, galleries and restaurants at your leisure..",
  title_id: 1,
  start: "12:30:00"
)
activity3 = Activity.create(
  content: "A wilderness excursion by Jeep or a 2.5-hour sightseeing tour by minivan. If you enjoy hiking, many excellent trails start nearby.",
  title_id: 1,
  start: "16:30:00"
)
title1.activities << activity1
title1.activities << activity2
title1.activities << activity3
########CREATE TITLE2###################################################
title2 = Title.create(
  name: "Day 2: Sedona — Grand Canyon "
)
activity4 = Activity.create(
  content: "After morning pickup at your hotel in Phoenix, drive north for about two hours, traveling through the Sonoran Desert and into the red rock country of Sedona.",
  title_id: 2,
  start: "16:30:00"
)
activity5 = Activity.create(
  content: "See highlights of the area as you approach Sedona, where you have free time in the afternoon and evening explore the town’s shops, galleries and restaurants at your leisure..",
  title_id: 2,
  start: "12:30:00"
)
activity6 = Activity.create(
  content: "A wilderness excursion by Jeep or a 2.5-hour sightseeing tour by minivan. If you enjoy hiking, many excellent trails start nearby.",
  title_id: 2,
  start: "16:30:00"
)
title2.activities << activity4
title2.activities << activity5
title2.activities << activity6
########CREATE TITLE3###################################################
title3 = Title.create(
  name: "Day 3: Grand Canyon — Phoenix:"
)
activity7 = Activity.create(
  content: "After morning pickup at your hotel in Phoenix, drive north for about two hours, traveling through the Sonoran Desert and into the red rock country of Sedona.",
  title_id: 3,
  start: "08:30:00"
)
activity8 = Activity.create(
  content: "See highlights of the area as you approach Sedona, where you have free time in the afternoon and evening explore the town’s shops, galleries and restaurants at your leisure..",
  title_id: 3,
  start: "12:30:00"
)
activity9 = Activity.create(
  content: "A wilderness excursion by Jeep or a 2.5-hour sightseeing tour by minivan. If you enjoy hiking, many excellent trails start nearby.",
  title_id: 3,
  start: "16:30:00"
)
title3.activities << activity7
title3.activities << activity8
title3.activities << activity9


e2.titles << title1
e2.titles << title2
e2.titles << title3
#################################################################################################################################################################################For Each Event###############################################################
#################################################################################################################################################################################For Each Event###############################################################
#################################################################################################################################################################################For Each Event###############################################################

########CREATE TITLE1###################################################
title1 = Title.create(
  name: "Day 1: Phoenix — Sedona "
)
activity1 = Activity.create(
  content: "After morning pickup at your hotel in Phoenix, drive north for about two hours, traveling through the Sonoran Desert and into the red rock country of Sedona.",
  title_id: 1,
  start: "08:30:00"
)
activity2 = Activity.create(
  content: "See highlights of the area as you approach Sedona, where you have free time in the afternoon and evening explore the town’s shops, galleries and restaurants at your leisure..",
  title_id: 1,
  start: "12:30:00"
)
activity3 = Activity.create(
  content: "A wilderness excursion by Jeep or a 2.5-hour sightseeing tour by minivan. If you enjoy hiking, many excellent trails start nearby.",
  title_id: 1,
  start: "16:30:00"
)
title1.activities << activity1
title1.activities << activity2
title1.activities << activity3
########CREATE TITLE2###################################################
title2 = Title.create(
  name: "Day 2: Sedona — Grand Canyon "
)
activity4 = Activity.create(
  content: "After morning pickup at your hotel in Phoenix, drive north for about two hours, traveling through the Sonoran Desert and into the red rock country of Sedona.",
  title_id: 2,
  start: "16:30:00"
)
activity5 = Activity.create(
  content: "See highlights of the area as you approach Sedona, where you have free time in the afternoon and evening explore the town’s shops, galleries and restaurants at your leisure..",
  title_id: 2,
  start: "12:30:00"
)
activity6 = Activity.create(
  content: "A wilderness excursion by Jeep or a 2.5-hour sightseeing tour by minivan. If you enjoy hiking, many excellent trails start nearby.",
  title_id: 2,
  start: "16:30:00"
)
title2.activities << activity4
title2.activities << activity5
title2.activities << activity6
########CREATE TITLE3###################################################
title3 = Title.create(
  name: "Day 3: Grand Canyon — Phoenix:"
)
activity7 = Activity.create(
  content: "After morning pickup at your hotel in Phoenix, drive north for about two hours, traveling through the Sonoran Desert and into the red rock country of Sedona.",
  title_id: 3,
  start: "08:30:00"
)
activity8 = Activity.create(
  content: "See highlights of the area as you approach Sedona, where you have free time in the afternoon and evening explore the town’s shops, galleries and restaurants at your leisure..",
  title_id: 3,
  start: "12:30:00"
)
activity9 = Activity.create(
  content: "A wilderness excursion by Jeep or a 2.5-hour sightseeing tour by minivan. If you enjoy hiking, many excellent trails start nearby.",
  title_id: 3,
  start: "16:30:00"
)
title3.activities << activity7
title3.activities << activity8
title3.activities << activity9

e3.titles << title1
e3.titles << title2
e3.titles << title3
#################################################################################################################################################################################For Each Event###############################################################
#################################################################################################################################################################################For Each Event###############################################################
#################################################################################################################################################################################For Each Event###############################################################

########CREATE TITLE1###################################################
title1 = Title.create(
  name: "Day 1: Phoenix — Sedona "
)
activity1 = Activity.create(
  content: "After morning pickup at your hotel in Phoenix, drive north for about two hours, traveling through the Sonoran Desert and into the red rock country of Sedona.",
  title_id: 1,
  start: "08:30:00"
)
activity2 = Activity.create(
  content: "See highlights of the area as you approach Sedona, where you have free time in the afternoon and evening explore the town’s shops, galleries and restaurants at your leisure..",
  title_id: 1,
  start: "12:30:00"
)
activity3 = Activity.create(
  content: "A wilderness excursion by Jeep or a 2.5-hour sightseeing tour by minivan. If you enjoy hiking, many excellent trails start nearby.",
  title_id: 1,
  start: "16:30:00"
)
title1.activities << activity1
title1.activities << activity2
title1.activities << activity3
########CREATE TITLE2###################################################
title2 = Title.create(
  name: "Day 2: Sedona — Grand Canyon "
)
activity4 = Activity.create(
  content: "After morning pickup at your hotel in Phoenix, drive north for about two hours, traveling through the Sonoran Desert and into the red rock country of Sedona.",
  title_id: 2,
  start: "16:30:00"
)
activity5 = Activity.create(
  content: "See highlights of the area as you approach Sedona, where you have free time in the afternoon and evening explore the town’s shops, galleries and restaurants at your leisure..",
  title_id: 2,
  start: "12:30:00"
)
activity6 = Activity.create(
  content: "A wilderness excursion by Jeep or a 2.5-hour sightseeing tour by minivan. If you enjoy hiking, many excellent trails start nearby.",
  title_id: 2,
  start: "16:30:00"
)
title2.activities << activity4
title2.activities << activity5
title2.activities << activity6
########CREATE TITLE3###################################################
title3 = Title.create(
  name: "Day 3: Grand Canyon — Phoenix:"
)
activity7 = Activity.create(
  content: "After morning pickup at your hotel in Phoenix, drive north for about two hours, traveling through the Sonoran Desert and into the red rock country of Sedona.",
  title_id: 3,
  start: "08:30:00"
)
activity8 = Activity.create(
  content: "See highlights of the area as you approach Sedona, where you have free time in the afternoon and evening explore the town’s shops, galleries and restaurants at your leisure..",
  title_id: 3,
  start: "12:30:00"
)
activity9 = Activity.create(
  content: "A wilderness excursion by Jeep or a 2.5-hour sightseeing tour by minivan. If you enjoy hiking, many excellent trails start nearby.",
  title_id: 3,
  start: "16:30:00"
)
title3.activities << activity7
title3.activities << activity8
title3.activities << activity9

e4.titles << title1
e4.titles << title2
e4.titles << title3
#################################################################################################################################################################################For Each Event###############################################################
#################################################################################################################################################################################For Each Event###############################################################
#################################################################################################################################################################################For Each Event###############################################################

########CREATE TITLE1###################################################
title1 = Title.create(
  name: "Day 1: Phoenix — Sedona "
)
activity1 = Activity.create(
  content: "After morning pickup at your hotel in Phoenix, drive north for about two hours, traveling through the Sonoran Desert and into the red rock country of Sedona.",
  title_id: 1,
  start: "08:30:00"
)
activity2 = Activity.create(
  content: "See highlights of the area as you approach Sedona, where you have free time in the afternoon and evening explore the town’s shops, galleries and restaurants at your leisure..",
  title_id: 1,
  start: "12:30:00"
)
activity3 = Activity.create(
  content: "A wilderness excursion by Jeep or a 2.5-hour sightseeing tour by minivan. If you enjoy hiking, many excellent trails start nearby.",
  title_id: 1,
  start: "16:30:00"
)
title1.activities << activity1
title1.activities << activity2
title1.activities << activity3
########CREATE TITLE2###################################################
title2 = Title.create(
  name: "Day 2: Sedona — Grand Canyon "
)
activity4 = Activity.create(
  content: "After morning pickup at your hotel in Phoenix, drive north for about two hours, traveling through the Sonoran Desert and into the red rock country of Sedona.",
  title_id: 2,
  start: "16:30:00"
)
activity5 = Activity.create(
  content: "See highlights of the area as you approach Sedona, where you have free time in the afternoon and evening explore the town’s shops, galleries and restaurants at your leisure..",
  title_id: 2,
  start: "12:30:00"
)
activity6 = Activity.create(
  content: "A wilderness excursion by Jeep or a 2.5-hour sightseeing tour by minivan. If you enjoy hiking, many excellent trails start nearby.",
  title_id: 2,
  start: "16:30:00"
)
title2.activities << activity4
title2.activities << activity5
title2.activities << activity6
########CREATE TITLE3###################################################
title3 = Title.create(
  name: "Day 3: Grand Canyon — Phoenix:"
)
activity7 = Activity.create(
  content: "After morning pickup at your hotel in Phoenix, drive north for about two hours, traveling through the Sonoran Desert and into the red rock country of Sedona.",
  title_id: 3,
  start: "08:30:00"
)
activity8 = Activity.create(
  content: "See highlights of the area as you approach Sedona, where you have free time in the afternoon and evening explore the town’s shops, galleries and restaurants at your leisure..",
  title_id: 3,
  start: "12:30:00"
)
activity9 = Activity.create(
  content: "A wilderness excursion by Jeep or a 2.5-hour sightseeing tour by minivan. If you enjoy hiking, many excellent trails start nearby.",
  title_id: 3,
  start: "16:30:00"
)
title3.activities << activity7
title3.activities << activity8
title3.activities << activity9

e5.titles << title1
e5.titles << title2
e5.titles << title3
#################################################################################################################################################################################For Each Event###############################################################
#################################################################################################################################################################################For Each Event###############################################################
#################################################################################################################################################################################For Each Event###############################################################

########CREATE TITLE1###################################################
title1 = Title.create(
  name: "Day 1: Phoenix — Sedona "
)
activity1 = Activity.create(
  content: "After morning pickup at your hotel in Phoenix, drive north for about two hours, traveling through the Sonoran Desert and into the red rock country of Sedona.",
  title_id: 1,
  start: "08:30:00"
)
activity2 = Activity.create(
  content: "See highlights of the area as you approach Sedona, where you have free time in the afternoon and evening explore the town’s shops, galleries and restaurants at your leisure..",
  title_id: 1,
  start: "12:30:00"
)
activity3 = Activity.create(
  content: "A wilderness excursion by Jeep or a 2.5-hour sightseeing tour by minivan. If you enjoy hiking, many excellent trails start nearby.",
  title_id: 1,
  start: "16:30:00"
)
title1.activities << activity1
title1.activities << activity2
title1.activities << activity3
########CREATE TITLE2###################################################
title2 = Title.create(
  name: "Day 2: Sedona — Grand Canyon "
)
activity4 = Activity.create(
  content: "After morning pickup at your hotel in Phoenix, drive north for about two hours, traveling through the Sonoran Desert and into the red rock country of Sedona.",
  title_id: 2,
  start: "16:30:00"
)
activity5 = Activity.create(
  content: "See highlights of the area as you approach Sedona, where you have free time in the afternoon and evening explore the town’s shops, galleries and restaurants at your leisure..",
  title_id: 2,
  start: "12:30:00"
)
activity6 = Activity.create(
  content: "A wilderness excursion by Jeep or a 2.5-hour sightseeing tour by minivan. If you enjoy hiking, many excellent trails start nearby.",
  title_id: 2,
  start: "16:30:00"
)
title2.activities << activity4
title2.activities << activity5
title2.activities << activity6
########CREATE TITLE3###################################################
title3 = Title.create(
  name: "Day 3: Grand Canyon — Phoenix:"
)
activity7 = Activity.create(
  content: "After morning pickup at your hotel in Phoenix, drive north for about two hours, traveling through the Sonoran Desert and into the red rock country of Sedona.",
  title_id: 3,
  start: "08:30:00"
)
activity8 = Activity.create(
  content: "See highlights of the area as you approach Sedona, where you have free time in the afternoon and evening explore the town’s shops, galleries and restaurants at your leisure..",
  title_id: 3,
  start: "12:30:00"
)
activity9 = Activity.create(
  content: "A wilderness excursion by Jeep or a 2.5-hour sightseeing tour by minivan. If you enjoy hiking, many excellent trails start nearby.",
  title_id: 3,
  start: "16:30:00"
)
title3.activities << activity7
title3.activities << activity8
title3.activities << activity9

e6.titles << title1
e6.titles << title2
e6.titles << title3


########Join event, tags and group link#################################
g1.users << u1
g1.users << u2
g1.users << u4
g1.users << u3

e1.creator = u1
e1.attendees << u1
e1.attendees << u2
e1.attendees << u3
e1.attendees << u4
e1.creator.save
e1.tags << t1
e1.save
t1.reload
########Join event, tags and group link#################################
g2.users << u1
g2.users << u2

e2.creator = u3
e2.attendees << u1
e2.attendees << u2
e2.attendees << u3
e1.creator.save
e2.tags << t1
e2.save
t1.reload
########Join event, tags and group link#################################
g3.users << u1
g3.users << u2
g3.users << u4
g3.users << u3

e3.creator = u2
e3.attendees << u1
e3.attendees << u2
e3.attendees << u3
e3.attendees << u4
e3.creator.save
e3.tags << t1
e3.save
t1.reload
########Join event, tags and group link#################################
g4.users << u1
g4.users << u2
g4.users << u4
g4.users << u3

e4.creator = u1
e4.attendees << u1
e4.attendees << u2
e4.attendees << u3
e4.attendees << u4
e4.creator.save
e4.tags << t1
e4.save
t1.reload
########Join event, tags and group link#################################
g5.users << u1
g5.users << u2
g5.users << u4
g5.users << u3

e5.creator = u4
e5.attendees << u1
e5.attendees << u2
e5.attendees << u3
e5.attendees << u4
e5.creator.save
e5.tags << t1
e5.save
t1.reload
########Join event, tags and group link#################################
g6.users << u1
g6.users << u2
g6.users << u4
g6.users << u3

e6.creator = u2
e6.attendees << u1
e6.attendees << u2
e6.attendees << u3
e6.attendees << u4
e6.creator.save
e6.tags << t2
e6.save
t1.reload



