--i need to add vegan only/halal restuarants to make database realistic 
-- i need to fix the data here not matching with parameters , fixed reference points in ddl so no longer have to change parameters name 
insert into restuarants (restaurant_id, restaurant_name, restaurant_formality_level, restaurant_avg_total, restaurant_location_id, restaurant_type) values
(1, "Picolla Italy Pizza & Subs", "Casual", "$15-20", 1, "Italian"),
(2, "Village Cafe", "Casual", "$15-20", 2, "American"),
(3, "Kuba Kuba", "Casual", "$25-30", 3, "Cuban"),
(4, "Dinamo", "Casual", "$25-30", 4, "Italian"),
(5, "821 Cafe", "Casual", "$15-20", 5, "American Cafe"),
(6, "Crazy Thai Restaurant", "Casual", "$25-30", "Thai"),
(7, "Pardon My Cheesesteak", "Casual", "$15-20", "Cheesesteak"),
(8, "Sonic Drive-In", "Fast Food", "$15-20", "American Fast Food"),
(9, "Paisano's Pizza", "Casual", "$15-20", "Italian"),
(10, "Subway", "Sub-Sandwich Fast Food", "Fast Food", "Sandwich"),

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

;


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
(10, 10, .1, "Several Close", "Literally on campus")
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
