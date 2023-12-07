select restaurant_id, restaurant_name, restaurant_location_id from restaurants
join locations on (restaurant_location_id = location_id) where location_direction_from_VCU = 'West'

select item_id, item_name, item_description, item_price from menu_items join item on menu_items.item_id = item.item_id where menu_items.menu_id in (select menu_id FROM menu WHERE restaurant_id = 22)

SELECT item.item_id, item.item_name, item.item_description, item.item_price FROM menu_items JOIN item ON menu_items.item_id = item.item_id WHERE menu_items.menu_id IN (SELECT menu_id FROM menu WHERE restaurant_id =22);

SELECT
    item.item_id,
    item.item_name,
    item.item_description,
    item.item_price
FROM
    menu_items
JOIN
    item ON menu_items.item_id = item.item_id
JOIN
    menu ON menu_items.menu_id = menu.menu_id
JOIN
    restaurants ON menu.restaurant_id = restaurants.restaurant_id
WHERE
    restaurants.restaurant_name = 'Dinamo';


SELECT
    item.item_id,
    item.item_name,
    item.item_description,
    item.item_price,
    restaurants.restaurant_name
FROM
    menu_items
JOIN
    item ON menu_items.item_id = item.item_id
JOIN
    menu ON menu_items.menu_id = menu.menu_id
JOIN
    restaurants ON menu.restaurant_id = restaurants.restaurant_id
JOIN
    dietary_preference ON item.item_dietary_preference_id = dietary_preference.dietary_preference_id
WHERE
    dietary_preference.dietary_preference_name = 'Halal';


 
