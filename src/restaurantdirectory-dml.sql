--i need to add vegan only/halal restuarants to make database realistic 
-- i need to fix the data here not matching with parameters , fixed reference points in ddl so no longer have to change parameters name 
insert into restuarants (restaurant_id, restaurant_name, restaurant_formality_level, restaurant_avg_total, restaurant_location_id, restaurant_type) values
(1, "Picolla Italy Pizza & Subs", "Casual", "$15-20", 1, "Italian"),
(2, "Village Cafe", "Casual", "$15-20", 2, "American"),
(3, "Kuba Kuba", "Casual", "$25-30", 3, "Cuban"),
(4, "Dinamo", "Casual", "$25-30", 4, "Italian"),
(5, "821 Cafe", "Casual", "$15-20", 5, "American Cafe"),
(6, "Crazy Thai Restaurant", "Casual", "$25-30", 6, "Thai"),
(7, "Pardon My Cheesesteak", "Casual", "$15-20", 7, "Cheesesteak"),
(8, "Sonic Drive-In", "Fast Food", "$15-20", 8, "American Fast Food"),
(9, "Paisano's Pizza", "Casual", "$15-20", 9, "Italian"),
(10, "Subway", "Sub-Sandwich Fast Food", "$15-20" 10, "Sandwich"),
(11, "Chipotle Mexican Grill", "Casual", "$15-20", 11, "Mexican"),
(12, "CAVA", "Casual", "$15-20", 12, "Meditarranean" ),
(13, "Panera Bread", "Casual", "15-20", 13, "Cafe"),
(14, "&pizza", "Casual", "$25-30", 14, "Pizza"),
(15, "Got Dumplings & TSAoCAA Tea", "Casual", "$25-30", 15, "Asian"),
(16, "Alladin Express", "Casual", "$25-30", 16, "Meditarranean"),
(17, "Domino's Pizza", "Takeout", "$15-20", 17, "Pizza"),
(18, "Bento Sushi", "Takeout", "$15-20", 18, "Sushi"),
(19, "Freshii", "Casual", "$25-30", "Health Food"),
(20, "Chick-fil-A", "Takeout", "$15-20", "Fast Food Chicken"),
(21, "Steak 'n Shake", "Takeout", "$15-20", "American Fast Food"),
(22, "Oh Mochi Richmond", "Casual", "$15-20", "Donuts"),


;

insert into review (review_id, review_restaurant_id, review_rating, review_text, review_date) values
(1, 1, 5, "This place is amazing! If you have not visited & you're in the area, this place is a must. By far, the closest NY pizza I've ever tasted. Italian, for sure! Their pizza by the slice is huge and filling. You can add whatever toppings you want on the one slice. I always get bacon & pineapple! Today, we tried the lasagna. It was so damn good, we took the picture halfway into eating the dish. It was filling enough on top of the pizza, and there was still half of the plate left! The only reason the atmosphere received 4 stars was because they have a fountain drink machine, but it doesn't work. There is a good variety of bottled beverages, though. Definitely need to make it a point to come here! I want to try so much more!", '02-21-2023'),
(2, 1, 5, "This is the best pizza place in all of the Richmond area.  Worth the drive. They have fresh pizza by the slice,  the fountain drinks are down but they have a great selection of bottled beverages including beer. NY taste hands down.  Staff is friendly and even brought the food to the table while it wasn't too busy.  Now I forgot to take a picture when it first came out,  but the Lasagna with meat sauce OMG! A must eat for any pizza  and Italian food lovers. (Authentic)", '02-14-2023'),
(3, 1, 5, "Love this place, order from here at least 3x a month. Today I had forgotten my payment and had canceled the order on the phone right after ordering. 20 minutes later, the delivery driver showed up with my food and refused to accept a later payment or tip on Venmo just out of pure kindness. It made my week:)", '10-22-2023'),
(4, 1, 1, "I can't believe people say that this is the best NY slice in the city- it had to be the most flavorless, flaccid pie I've ever had- friggin' Domino's has more flavor. Truly an affront to pizza.", '11-19-2023'),
(5, 1, 4, "Piccola is another of my Richmond staple places for take out. They have fresh subs. My lady absolutely loved her slice of pepperoni pizza on this visit. The staff is always polite. Now that the window is closed and we go inside to order the inside atmosphere can be a little drab sometimes and could use a small inject of visual or audible stimulation. But again this business takes pride in food and the staff is polite. I will continue to support this business.", '07-07-2023'),
(6, 2, 5, "This was my 1st visit, and it will not be my last. I had the Joshua with onion rings. All I  can  say is I didn't go wrong. The onion rings and the homemade ranch dip were to die for.", '06-23-2023'),
(7, 2, 5, "First time here. Son just started at VCU so we had heard this was a good place and decided to try. Cute place. Food was good. We got pizza fries, Italian sub, tuna melt, club sandwich and chicken parm sub. All very good", '09-15-2023'),
(8, 2, 5, "Great food, fast service, decent portion sizes and fair prices. We went on a weekday morning so it wasn’t too busy. Parking was close by as well. We even got mini souvenir pitchers. Nice variety of options for food as well.", '11-16-2023'),
(9, 2, 4, "One of my favorites. It's been awhile since we had the opportunity to eat here, but the food is as good as it has always been. My wife had a Reuben Sandwich, I opted for something a little different, ordering a Cowboy Burrito from the 'Specials' menu. It was packed with flavor and the portion was definitely more than enough.", "06-19-2023"),
(10, 2, 5 "Excellent diner downtown near VCU. Breakfast served all day and giant milkshakes served in silver cups for only $5. Plenty of seating and a great menu. The ambiance is amazing with the cozy wood booths and our food came out very fast. Definitely worth a visit. I want to go back to try the pancakes!", '01-08-2023'),
(11, 3, 5, "Laid back neighborhood atmosphere with seriously delicious and filling Cuban food (with vegetarian options!). I got the paella for dinner and leftovers lasted for two extra meals. The breakfast and lunch/sandwich options also looked delicious - will definitely be back!", '11-08-2023'),
(12, 3, 5, "Great Cuban food, large portions, fun atmosphere. Understaffed, so service is slow, but pleasant. Be patient, the food is worth the wait. Ate there for dinner and for breakfast. Generous portions, so be prepared to take food home!", '07-22-2023'),
(13, 3, 5, "A unique, small place with tons of character and AMAZING food. Huge menu with something for everyone. Got the main pork dish and one of the best meals I’ve had.", '08-17-2023'),
(14, 3, 3, "Meh... I was hoping for something special here. The name sounded fun and it was a hole in the wall place so I immediately knew I had to try them out. The service was not what I expected. Our waitress did not check on us often and I was left with an empty glass more than once. The food was bland and didn't look very appetizing. Most of all the cornbread that everyone was bragging about was drrryyyyyyy... like Popeyes biscuits dry. Probably won't go there again but I'm glad I tried them out.", '11-16-2023'),
(15, 3, 5, "Reminds me of Home (key west). This is the closest I have been to good cuban food without being at home. Made me miss it more. Will be back.", '01-14-2023'),
(16, 4, 5, "Delightful dinner. More of a southern comfort and Italian food fusion. This was a pre show dinner and didn't disappoint. Huge portions. Highly recommend. Reminded me of under the radar restaurants in SF and NYC. Definitely a Richmond vibe. We didn't have reservations but they found a way to fit us in.", '10-29-2023'),
(17, 4, 4, "The pizza is great. Service is great. But we were really disappointed to find the mushrooms on our pizza and in the pasta were from a can. I know things are expensive right now but just charge me a few more dollars for fresh mushrooms if you have to. Really didn’t expect canned mushrooms from a place like this. The mussels and the pasta were both really garlicky. I would go back for a pepperoni pizza and a beer but that’s about it.", '08-19-2023'),
(18, 4, 5, "The food was outstanding. Service was great, it definitely is a compact eatery, so you’ll need a reservation. It’s an experience tho - to see the kitchen making your food as you sit and talk. Great cocktails and coffee options. We tried the tiramisu, but it was gone before I could take a picture! It was simply incredible", '11-20-2022'),
(19, 4, 5, "Loved it. Nice people, great modern Italian Jewish food. Had the matzoh ball soup. Hot and tasty with perfectly formed but tender dumplings. Delicious dill notes. Eggs in purgatory were spicy and rich. Belgian farmhouse ale gem Maine was sharp and refreshing.", '07-24-2019'),
(20, 4, 4, "Not an extensive menu, but well prepared and oh so good.  Service is friendly and quick, though limited seating  requires some planning ahead or hanging around waiting. One can be served at the (small) bar if impatient to wait for a table. And yes, espresso is served.", '04-09-2018'),
(21, 5, 5, "This restaurant has tasty vegan options and a fun vibe. They have two TVs playing older movies, which was fun to watch and comment on while we enjoyed our meal.", '10-22/2023'),
(22, 5, 4, "I’m really impressed by the variety of the vegan options here. The menu is super creative and there are many unique dishes and cocktails to choose from. They are a busy little place but it is very worth the wait.", '07-18-2023'),
(23, 5, 5, "Kicking myself for taking so long to visit this place! Great atmosphere, EXCELLENT diner food, good beer selection, and awesome prices. I went for brunch and got the Everything bagel with Lox - SO FREAKING GOOD. I’ve had this same meal at many other restaurants and this was by far the best. If you love salmon, this is a must try!", '05-20-2023'),
(24, 6, 4, "This may be the gem of the city! Wow.. the prices are amazing, food came out quick and delicious and the service was top notch!! Happy hour is 5-8 with 3$ bottle beers and lots of choices. We loved our appetizers (spring rolls & steamed dumplings)! The pad Thai and cashew nut chicken were both excellent options! Don’t skip out on this place! I also hope that not too many people know about it :)", '03-04-2023'),
(25, 6, 5, "Delicious everything! Pad Thai and Pineapple fried rice! Service was great! Would definitely dine here again", '04-11-2023'),
(26, 8, 1, "We walked in, and the guy at the cash register stared us down like we ruined his night.  He doesn't say a word.  We asked if we could order, and he just stares at us. Bathrooms are blocked off.  We asked if we could use them but they said they are closed for the night.  It is only 7:30pm. Food comes out and it is cold.  The mozzarella sticks are room temperature and hard.  The burger was okay.  We asked for new mozzarella sticks.  The 2nd batch had 2 melted ones and the rest were hard.  Maybe an indication the cheese is bad?", '10-20-2023'),
(27, 8, 2, "I ordered online so no feedback about the order service, but my food was less than satisfactory. Everything was ready when we picked it up, but that's probably because the fries were made hours before. What's more annoying is I tipped through the app because I work in the service industry and I know pay sucks.  It's not too much to ask for at least moderately fresh food.", '10-29-2022'),
(28, 8, 1, "Terrible. Overpriced and their real banana milkshake is not real banana it is banana flavoring!! Liars!! My fries had been sitting for at least an hour and were cold and hard. Worst sonic I have ever been to. Also the cashier was rude.", '07-13-2023'),
(29, 9, 5, "Its a small place but the staff were so nice and helpful,  the pizza was delicious and perfect.", '10-22-2023'),
(30, 9, 2, "Ordered take out from here, was dissatisfied with what I received. Pizza was satisfactory, however, garlic knots were comically small. Like, as if they gave us the crumb left overs. I would have called for a refund but I did not want to wait a long time to go through the process. I recommend staying away from here. There are better places in the area to go to.", '02-17-2023'),
(31, 9, 5, "Great lunch or dinner on campus! We love walking over to Paisano's for lunch breaks at work. Their food is consistently solid and the staff are always friendly. Their prices are also reasonable and they have regular coupon codes that you can add.", '09-14-2023'),
(32, 10, 1, "The subway workers disgust me. They are so bothered when they take an order and they don't have any professional way of speaking what so ever. They mumble everything you say and when they're even bothered to repeat what they said. They are very rude, very rude. Not going back to that subway ever again being it was my second time experiencing the same problem.", '11-22-2019'),
(33, 11, 1, "I ordered 2 chicken burrito bowls and a burrito with beef. Just received rice and lettuce. Worst customer service also workers standing around and not even greeting patrons or giving guidance on where to pick up online orders. Absolutely the worst Dining experience ever! Oh I added pics since this was so unbelievable.", '10-22-2022'),
(34, 11, 2, "I would not recommend this chipotle to a friend but unfortunately it’s the closet one to my house. Bowls are tiny, rice is usually crunchy, and they be skimping. You’re better off going to Cava next door", '09-28-2023'),
(35, 11, 4, "Chipotle at Richmond downtown, the only reason I took a star off is they meat savings portions. I usually get a scoop and half for an order but they gave me 1 scoop and 2 pieces of cut steak. Overall very clean store and clean bathrooms.", '09-13-2021'),
(36, 12, 5, "Such good food with so many options to customize your meal! The Mediterranean sauces and dips with all of the fresh ingredients was very enjoyable. The food was priced well while the fountain drinks were a little on the expensive side but being right there campus, it wasn’t shocking.", "06-20-2023"),
(37, 12, 4, "Great food...not as yummy as their 'M' competition, but several convenient locations. I don't give 5 star reviews to fast-casual places so this is about as good as it gets.", '10-15-2023'),
(38, 13, 3, "Food and coffee are great. Some of the employees are wonderful. Now, management is a different story. If you look remotely different, then the typical customer they will watch you the entire time. He will go as far as to follow you in the restroom. I was a paying customer. I don't recommend going unless you look a certain way. What I mean by that is don't look homeless if you can help it.", '09-30-2023'),
(39, 13, 3, "The staff are either really nice oooooor assume you aren't a paying customer right off the bat (regardless of what you are doing) and treat you rudely based on that. It's kind of messy, especially around the drink area. Prices feel high for the quality, and the charged lemonade - not just a fault of this location, an issue with Panera as a whole that customers should be mindful of - contains your /entire/ daily value of caffeine, which can make you feel things like heart palpitations after drinking it. It is tasty though.", '05-08-2023'),
(40, 13, 5, "No soup at 7 am… soup starts at 9 am. Drinks were delicious. The green tea was the best one. Bagel was delicious and got a free wrap!", '11-27-2022'),
(41, 14, 5, "The young lady who took our order and made the puzzas was very friendly and helpful with giving information and suggestions on the best sauces and toppings to pair up with. The pizza came out perfect!! My only regret is that I forgot to take a picture!", '11-20-2023'),
(42, 14, 4, "I want to give five stars, but I can't! They are always out of vegan knots. I love that they have vegan options but isn't beneficial if you are always out of item. Also, when preparing for online delivery orders, please put my food in a bag!!! I love this place and I love the vegan knots and pizza but if I can't ever order them because they are out of them it doesn't do much good.", '08-21-2023'),
(43, 14, 5, "I went in here on a whim, and I am totally happy I did! The pizza is excellent! The staff is very helpful and pleasant. The time spent from ordering to leaving is only about five to six minutes. So in and out quickly. Again the pizza is excellent! I will certainly return! Enjoy!", '03-25-2022'),
(44, 15, 2, "The dumplings here were okay and the ones we got were deep fried. The cold sesame noodles were a bit too sweet for my taste, could definitely use some garlic/salt. We got the ramen as well but the broth was very disappointing. Also if you’re dining in they serve food in plastic containers (including the ramen, which came in 2 separate containers that you had to combine). Big portions though!", '03-19-2023'),
(45, 15, 5, "This place has delicious dumplings and fried rice! Their dumpling soup is also amazing. And the brown sugar milk tea with bubble is amazing and so well made! ", '11-12-2023'),
(46, 16, 5, "Looking for your next love in food? Try  these authentic tasting dishes, and you'll see the care and quality which goes into each. I know many people who love the food here too! I had mine delivered with Uber Eats, it arrived yummy and delicious.", '06-19-2023'),
(47, 16, 3, "Good food but pay for water. I loved the philly in the gyro on request instead of the regular bread. Pizzas are good too. That is a go to thing here for me. The quantity is okay. We went for the food not the hookah so no comments on the hookah.", '10-26-2019'),
(48, 17, 4, "The staff are super friendly and the service was quick. I asked for a few napkins, and they offered plates too. That was super helpful. The only down side is the pizzas were a lot more oily (buttery?) than we are used to. Pizza was still Delicious though. We jaunted over to Monroe Park to picnic out.", '09-20-2023'),
(49, 17, 1, "Ordered a pizza over 2 hours ago, was told it was ready about 40 minutes after ordering it and the driver was on his way. That was 50 minutes ago and I still haven't received my food. Waiting over 2 1/2 hours for a pizza is ridiculous.", '11-20-2023'),
(50, 18, 5, "N/A", '10-18-2022'),
(51, 19, 1, "Smoothie machine is always 'broken' since VCU gave out coupons for the smoothies.  Food is terribly proportioned, don't pay 7 dollars for a pound of rice and several pieces of chicken.  Pretty much a lower quality chipotle.", '09-25-2018'),
(52, 19, 2, "I got a free meal coupon on the grad opening day and decided to get the Teriyaki Twist bowl. I personally found the vegetable to rice ratio to be very low. I was hoping for about equal amount of veggies and rice. Another disappointment was that they put WAY too much teriyaki sauce in my bowl. So much that it ruined the taste over everything was too overwhelming and salty. I would like to try some of their other items, but I definitely will not be getting the Teriyaki bowl again.", '07-18-2017'),
(53, 19, 1, "Way overpriced for what it is. Expect to wait 20+ minutes for a small item. Employees are all deaf so speak up or they won't get your order right or your name either. Food is OK though", '08-22-2019'),
(54, 20, 1, "Literally the worst location in the tri cities How does one make someone wait 30 minutes for a cool wrap …. Every time I come it’s a half hour for an already prepared item This place is a mess", '01-25-2023'),
(55, 20, 1, "Food isn't that great compared to other fast food options plus their staff is not exactly friendly or helpful. And Chick-fil-A supports/contributes to anti-LGBT groups. Not worth going anymore in my opinion.", '09-03-2021'),
(56, 20, 2, "I went to make an order and decided I wanted an extra fry close to payment, a lady with a heart tattoo on her neck asks me 'You were in line for 5 minutes and didn't know your order?.' This was never a problem at any other chick-fil-a, employees should be trained better than that.", '05-07-2020'),
(57, 21, 3, "N/A", '11/27/2023'),
(58, 22, 5, "These donuts are so delicious! Creme brûlée is my all time fav. They sell potato hot dogs too and I am totally trying those next time. Smoothies and Boba Tea are on the menu as well. Yum!", '10-14-2023'),
(59, 22, 5, "The donuts are so good and atmosphere is awesome!! They play kpop music. Lots of table to sit at. They have bottle drinks in the fridge that are from Korea like banana milk!! The donuts are never the same. Yes, they have a few they keep on the counter all the time, but they do make new flavors almost very week! Definitely worth coming with kpop loving friends, foodies, or wanting to try something new!", '10-15-2023'),
(60, 22, 5, "Cant complain about a thing! In a great location with great hours, food and vibes are unmatched. I feel like they keep updating things to the decor and menu, awesome place to be.", '11-20-2023'),
(61, 22, 4, "What a cute place! I’ve been wanting to try a Korean corndog for years and will have to come back often to try them all. I got the potato with all beef hot dog, I said no to the sweet finish but kind of wish I had gotten it because the potatoes were a little bland. The donuts are O M G! So billowy and light, love that it’s a rotating menu. The staff was lovely and worked hard to keep the line moving that picked up as my party was leaving. I’m not sure if there is an entrance in the back that would make ADA compliment but plenty of room once inside", '08-10-2023'),

;

insert into locations (location_id, location_address, location_direction_from_VCU, location_neighborhood) values
(1, "1100 W Main St, Richmond, VA 23220", "West", "The Fan"),
(2, "1001 W Grace St, Richmond, VA 23220", "Northwest", "VCU"),
(3, "1601 Park Ave, Richmond, VA 23220", "West", "The Fan"),
(4, "821 W Cary St, Richmond, VA 23220", "South", "VCU"),
(5, "825 W Cary St, Richmond, VA 23220", "South", "VCU"),
(6, "1100 W Cary St, Richmond, VA 23220", "Southwest", "VCU"),
(7, "815 W Cary St, Richmond, VA 23220", "South", "VCU"),
(8, "813 W Cary St, Richmond, VA 23220", "South", "VCU"),
(9, "801 W Cary St, Richmond, VA 23220", "South", "VCU"),
(10, "Higgs Bldg, 907 Floyd Ave, Richmond, VA 23284", "South", "VCU"),
(11, "810 W Grace St, Richmond, VA 23220", "North", "VCU"),
(12, "810 W Grace St, Richmond, VA 23220", "North", "VCU"),
(13, "810 W Grace St, Richmond, VA 23220", "North", "VCU"),
(14, "308 N Laurel St, Richmond, VA 23220", "North", "VCU")
(15, "309 N Laurel St, Richmond, VA 23220", "North", "VCU"),
(16, "801 W Broad St, Richmond, VA 23220", "North", "VCU"),
(17, "111 N Belvidere St, Richmond, VA 23220", "East", "VCU"),
(18, "810 Cathedral Pl, Richmond, VA 23284", "East", "VCU"),
(19, "907 Floyd Ave, Richmond, VA 23284", "South", "VCU"),
(20, "907 Floyd Ave, Richmond, VA 23284", "South", "VCU"),
(21, "907 Floyd Ave, Richmond, VA 23284", "South", "VCU"),
(22, "900 W Franklin St, Richmond, VA 23220", "Northwest", "VCU"),

;


--distance to VCU is measured from VCU compass
insert into accessibility (accessibility_id, accessibility_restaurant_id, accessibility_distance_to_VCU, accessibility_nearby_bus_stops, accessibility_notes) values

(1, 1, .2, "Several within a quarter of a mile", "Basically on campus"),
(2, 2, .3, "Several within quarter mile", "Basically on campus"),
(3, 3, .4, "None within quart mile", "Just into the fan"),

(4, 4, .3, "Two within walking distance down going West on Cary", "Basically on campus"),
(5, 5, .3, "Several within a half mile", "Basically on campus"),
(6, 6, .3, "Several close", "Basically on campus"),

(7, 7, .3, "Several Close", "Basically on campus"),
(8, 8, .3, "Several Close", "Basically on campus"),

(9, 9, .3, "Several Close", "Basically on campus"),
(10, 10, .1, "Several close on Harrison", "Literally on campus"),
(11, 11, .2, "Several Close", "Literally on campus"),
(12, 12, .2, "Several Close", "Literally on campus"),
(13, 13, .2, "Several Close", "Literally on campus"),
(14, 14, .3, "Several Close", "Basically on campus"),
(15, 15, .3, "Several Close", "Basically on campus"),
(16, 16, .3, "Several Close", "Basically on campus"),
(17, 17, .3, "None for .25 miles", "Basically on capus"),
(18, 18, .1, "Several on Harrison", "Literally on campus"),
(19, 19, .1, "Several on Main and on Harrison", "Literally on campus"),
(20, 20, .1, "Several on Main and on Harrison", "Literally on campus"),
(21, 21, .1, "Several on Main and on Harrison", "Literally on campus"),
(22, 22, .1, "One at Harrison and Franklin", "Basically on campus"),

;


INSERT INTO menu(restaurant_id,menu_id) values 
    (1,1),
    (2,2),
    (3,3),
    (4,4),
    (5,5),
    (6,6),
    (7,7),
    (8,8),
    (9,9),
    (10,10)
;


    INSERT INTO item (item_id, item_dietary_preference_id, item_name, item_description, item_price)
VALUES
--Piccola Subs
    (1001, 10, 'Margherita Pizza', 'Classic pizza with tomato, mozzarella, and basil', 9.99),
    (1002, 20, 'Pepperoni Pizza', 'Pizza topped with pepperoni and mozzarella cheese', 10.99),
    (1003, 40, 'Cheese Pizza', 'Pizza with a blend of different cheeses', 8.99),
    (1004, 10, 'Spaghetti Carbonara', 'Pasta with eggs, cheese, bacon, and black pepper', 12.49),
    (1005, 20, 'Chicken Alfredo', 'Fettuccine pasta with creamy Alfredo sauce and grilled chicken', 13.99),
    (1006, 40, 'Caprese Salad', 'Tomatoes, mozzarella, basil, and olive oil', 7.99),
    (1007, 10, 'Lasagna', 'Layers of pasta, meat, and cheese baked to perfection', 11.49),
    (1008, 20, 'Garlic Breadsticks', 'Freshly baked breadsticks with garlic seasoning', 5.99),
    (1009, 40, 'Tiramisu', 'Classic Italian dessert with coffee flavor', 6.99),
    (1010, 10, 'Ravioli', 'Stuffed pasta with various fillings', 10.99),
    (1011, 20, 'Calzone', 'Folded pizza filled with meats, cheese, and vegetables', 11.99),
    (1012, 40, 'Minestrone Soup', 'Traditional Italian vegetable soup', 8.49),
    (1013, 10, 'Bruschetta', 'Toasted bread topped with tomatoes, basil, and olive oil', 7.49),
    (1014, 20, 'Cannoli', 'Italian pastry with sweet ricotta filling', 9.99),
    (1015, 40, 'Penne alla Vodka', 'Penne pasta in a creamy tomato vodka sauce', 12.99),
    (1016, 10, 'Meatballs Marinara', 'Italian-style meatballs in marinara sauce', 14.99),
    (1017, 20, 'Vegetarian Pizza', 'Pizza topped with assorted vegetables and cheese', 11.99),
    (1018, 40, 'Gelato', 'Italian-style ice cream', 5.49),
    (1019, 10, 'Eggplant Parmesan', 'Breaded and baked eggplant with marinara sauce and cheese', 13.49),
    (1020, 20, 'Shrimp Scampi', 'Shrimp sautéed with garlic, butter, and white wine sauce', 15.99)
--Village
    (2001, 50, 'Corned Beef Hash', '2 eggs, a side choice, and bread choice', 8.95),
    (2002, 50, 'Steak & Eggs', '6 oz Ribeye or a country fried steak, 2 eggs, a side choice, and bread choice', 10.95),
    (2003, 50, 'Village Breakfast Special', '2 eggs any style, bacon, ham or sausage, a bread choice, and side choice', 6.95),
    (2004, 50, 'French Toast', 'Sliced French bread dipped in homemade batter and dusted with powdered sugar, served with a side choice', 8.95),
    (2005, 50, 'PANCAKES - Three Large Buttermilk Pancakes', '', 5.95),
    (2006, 50, 'Fruit Pancakes', 'Blueberry, banana, granola, chocolate chip, pecan, apple', 6.95),
    (2007, 10, 'Cheese Omelette', 'Two cheese choices, a bread choice, and a side choice', 7.95),
    (2008, 10, 'Veggie Omelette', 'Green & red peppers, black olives, mushrooms, and onions with cheddar', 7.95),
    (2009, 10, 'Western Omelette', 'Green peppers, diced tomatoes, onions, ham, and cheddar', 7.95),
    (2010, 50, 'California Omelette', 'Diced chicken, broccoli, and cheddar with a dollop of sour cream', 8.50),
    (2011, 10, 'Broccoli & Cheddar Omelette', 'Broccoli and cheddar cheese', 7.95),
    (2012, 10, 'Spinach & Feta Omelette', 'Spinach, feta, and mozzarella cheese', 7.95),
    (2013, 50, 'Lorraine Omelette', 'Spinach, bacon, tomatoes, and Swiss', 7.95),
    (2014, 50, 'Meat Lovers Omelette', 'Sausage, bacon, ham, and cheddar', 8.50),
    (2015, 50, 'Chicken Quesadilla', 'With cheddar cheese, tomato and onion. Served with salsa, lettuce, sour cream, and guacamole', 8.95),
    (2016, 10, 'Black Beans and Rice', 'Homemade black beans over rice with salsa and sour cream, served with tortilla chips', 7.95),
    (2017, 50, 'Wings', 'Choose fried, hot, dragon or honey BBQ', 7.95),
    (2018, 10, 'Cheese Fries', 'Large village fries with a choice of cheese', 5.95),
    (2019, 20,'Fried Mushrooms', 'Hand breaded and deep fried. Served with horseradish sauce', 6.50),
    (2020, 20,'Beer-Battered Onion Rings', 'Double-coated & deep fried with a house-made beer batter', 6.95),




;




--made the parameter restauraunt id 
INSERT INTO menu_items(menu_id, item_id) values
    -- Picolla Italy Pizza & Subs
    (1, 1001), (1, 1002), (1, 1003), (1, 1004), (1, 1005), (1, 1006), (1, 1007), (1, 1008), (1, 1009), (1, 1010),
    (1, 1011), (1, 1012), (1, 1013), (1, 1014), (1, 1015), (1, 1016), (1, 1017), (1, 1018), (1, 1019), (1, 1020),
    -- Village Cafe
    (2, 2001), (2, 2002), (2, 2003), (2, 2004), (2, 2005), (2, 2006), (2, 2007), (2, 2008), (2, 2009), (2, 2010),
    (2, 2011), (2, 2012), (2, 2013), (2, 2014), (2, 2015), (2, 2016), (2, 2017), (2, 2018), (2, 2019), (2, 2020),
    -- Kuba Kuba
    (3, 3001), (3, 3002), (3, 3003), (3, 3004), (3, 3005), (3, 3006), (3, 3007), (3, 3008), (3, 3009), (3, 3010),
    (3, 3011), (3, 3012), (3, 3013), (3, 3014), (3, 3015), (3, 3016), (3, 3017), (3, 3018), (3, 3019), (3, 3020),
    -- Dinamo
    (4, 4001), (4, 4002), (4, 4003), (4, 4004), (4, 4005), (4, 4006), (4, 4007), (4, 4008), (4, 4009), (4, 4010),
    (4, 4011), (4, 4012), (4, 4013), (4, 4014), (4, 4015), (4, 4016), (4, 4017), (4, 4018), (4, 4019), (4, 4020),
    -- 821 Cafe
    (5, 5001), (5, 5002), (5, 5003), (5, 5004), (5, 5005), (5, 5006), (5, 5007), (5, 5008), (5, 5009), (5, 5010), 
    (5, 5011), (5, 5012), (5, 5013), (5, 5014), (5, 5015), (5, 5016), (5, 5017), (5, 5018), (5, 5019), (5, 5020),
    -- Crazy Thai Restaurant
    (6, 6001), (6, 6002), (6, 6003), (6, 6004), (6, 6005), (6, 6006), (6, 6007), (6, 6008), (6, 6009), (6, 6010), 
    (6, 6011), (6, 6012), (6, 6013), (6, 6014), (6, 6015), (6, 6016), (6, 6017), (6, 6018), (6, 6019), (6, 6020),
    -- Pardon My Cheesesteak
    (7, 7001), (7, 7002), (7, 7003), (7, 7004), (7, 7005), (7, 7006), (7, 7007), (7, 7008), (7, 7009), (7, 7010), 
    (7, 7011), (7, 7012), (7, 7013), (7, 7014), (7, 7015), (7, 7016), (7, 7017), (7, 7018), (7, 7019), (7, 7020),
    -- Sonic Drive-In
    (8, 8001), (8, 8002), (8, 8003), (8, 8004), (8, 8005), (8, 8006), (8, 8007), (8, 8008), (8, 8009), (8, 8010), 
    (8, 8011), (8, 8012), (8, 8013), (8, 8014), (8, 8015), (8, 8016), (8, 8017), (8, 8018), (8, 8019), (8, 8020),
    -- Paisano's Pizza
    (9, 9001), (9, 9002), (9, 9003), (9, 9004), (9, 9005), (9, 9006), (9, 9007), (9, 9008), (9, 9009), (9, 9010), 
    (9, 9011), (9, 9012), (9, 9013), (9, 9014), (9, 9015), (9, 9016), (9, 9017), (9, 9018), (9, 9019), (9, 9020),
    -- Subway
    (10, 10001), (10, 10002), (10, 10003), (10, 10004), (10, 10005), (10, 10006), (10, 10007), (10, 10008), (10, 10009),
    (10, 10010), (10, 10011), (10, 10012), (10, 10013), (10, 10014), (10, 10015), (10, 10016), (10, 10017), (10, 10018), (10, 10019),
    (10, 10020),
    ;

--to fix might just connect dietary preferences to restaurants or
INSERT INTO dietary_preference (dietary_preference_id, dietary_preference_name) 
VALUES 
    (10, 'Vegetarian'), 
    (20, 'Vegan'), 
    (30, 'Halal'),
    (40, 'No Specified Preference');
