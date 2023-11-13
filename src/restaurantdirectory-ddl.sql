# Creating basic tables for DB

drop table if exists restaurants;
CREATE TABLE restaurants (
    restaurant_id int not null auto_increment,
    restaurant_name varchar(256) not null,
    restaurant_formality_level varchar(256),
    restaurant_avg_total float,
    restaurant_location_id int,
    restaurant_type varchar(256),
    PRIMARY KEY (restaurant_id)
)

drop table if exists review;
CREATE TABLE review (
    review_id int not null auto_increment,
    review_restaurant_id not null,
    review_rating float not null,
    review_text varchar (512),
    review_date date,
    PRIMARY KEY (review_id)
)

drop table if exists location;
CREATE TABLE location (
    location_id int not null auto_increment,
    location_address varchar(256) not null,
    location_direction_from_VCU char,
    location_distance_from_VCU float not null,
    location_neighborhood varchar(256),
    PRIMARY KEY (location_id)
)

drop table if exists discount;
CREATE TABLE discount (
    discount_id not null auto_increment,
    discount_restaurant_id not null,
    discount_description varchar(256),
    discount_conditions varchar(256),
    PRIMARY KEY (discount_id)
)

drop table if exists accessibility;
CREATE TABLE accessibility (
    accessibility_id int not null auto_increment,
    accessibility_restaurant_id int not null,
    accessibility_nearby_bus_stops varchar(256),
    accessibility_notes varchar(256),
    PRIMARY KEY (accessibility_id)
)

drop table if exists menu;
CREATE TABLE menu (
    menu_id int not null auto_increment,
    menu_restaurant_id int not null,
    menu_item_id int not null,
    PRIMARY KEY menu_id
)


drop table if exists item;
CREATE TABLE item (
    item_id int not null auto_increment,
    item_dietary_preference_id int,
    item_name varchar(256) not null,
    item_description varchar(512),
    item_price float not null,
    PRIMARY KEY (item_id)
)

drop table if exists dietary_preference;
CREATE TABLE dietary_preference (
    dietary_preference_id int not null auto_increment,
    dietary_preference_name varchar(256) not null,
    PRIMARY KEY (dietary_preference_id)
)


