select restaurant_id, restaurant_name, restaurant_location_id from restaurants
join locations on (restaurant_location_id = location_id) where location_direction_from_VCU = 'West'