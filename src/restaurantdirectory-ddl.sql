DROP TABLE IF EXISTS dietary_preference;
CREATE TABLE dietary_preference (
    dietary_preference_id int not null auto_increment,
    dietary_preference_name varchar(256) not null,
    PRIMARY KEY (dietary_preference_id)
);

DROP TABLE IF EXISTS locations;
CREATE TABLE locations (
    location_id int not null auto_increment,
    location_address varchar(256) not null,
    location_direction_from_VCU varchar(32),
    location_neighborhood varchar(256),
    PRIMARY KEY (location_id)
);

DROP TABLE IF EXISTS restaurants;
CREATE TABLE restaurants (
    restaurant_id int not null auto_increment,
    restaurant_name varchar(256) not null,
    restaurant_formality_level varchar(256),
    restaurant_avg_total varchar(64),
    restaurant_location_id int,
    restaurant_type varchar(256),
    PRIMARY KEY (restaurant_id),
    FOREIGN KEY (restaurant_location_id) REFERENCES locations(location_id)
);

DROP TABLE IF EXISTS review;
CREATE TABLE review (
    review_id int not null auto_increment,
    review_restaurant_id int not null,
    review_rating float not null,
    review_text varchar(1026),
    review_date date,
    PRIMARY KEY (review_id),
    FOREIGN KEY (review_restaurant_id) REFERENCES restaurants(restaurant_id)
);

DROP TABLE IF EXISTS accessibility;
CREATE TABLE accessibility (
    accessibility_id int not null auto_increment,
    accessibility_restaurant_id int not null,
    accessibility_miles_to_VCU float,
    accessibility_nearby_bus_stops varchar(256),
    accessibility_notes varchar(256),
    PRIMARY KEY (accessibility_id),
    FOREIGN KEY (accessibility_restaurant_id) REFERENCES restaurants(restaurant_id)
);


DROP TABLE IF EXISTS menu;
CREATE TABLE menu (
    menu_id int not null,
    restaurant_id int not null,
    PRIMARY KEY (menu_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

DROP TABLE IF EXISTS item;
CREATE TABLE item (
    item_id int not null,
    item_dietary_preference_id int,
    item_name varchar(256) not null,
    item_description varchar(512),
    item_price float not null,
    PRIMARY KEY (item_id)
);

DROP TABLE IF EXISTS menu_items;
CREATE TABLE menu_items (
    menu_item_id int not null auto_increment,
    menu_id int not null,
    item_id int not null,
    PRIMARY KEY (menu_item_id),
    FOREIGN KEY (menu_id) REFERENCES menu(menu_id),
    FOREIGN KEY (item_id) REFERENCES item(item_id)
);


