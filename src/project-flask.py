from flask import Flask, jsonify, request, redirect
import os
import sys
import pandas as pd
import pymysql
from tabulate import tabulate
from dotenv import load_dotenv
from sqlalchemy import create_engine, text
from sqlalchemy.exc import OperationalError, ProgrammingError
from IPython.display import display, Markdown
from collections import OrderedDict
import json

# make sure to add PROJECT_DB_NAME to .env file
config_map = {
    'user':'CMSC508_USER',
    'password':'CMSC508_PASSWORD',
    'host':'CMSC508_HOST',
    'database':'PROJECT_DB_NAME'
}
# load and store credentials
load_dotenv()
config = {}
for key in config_map.keys():
    config[key] = os.getenv(config_map[key])
flag = False
for param in config.keys():
    if config[param] is None:
        flag = True
        print(f"Missing {config_map[param]} in .env file")

engine_uri = f"mysql+pymysql://{config['user']}:{config['password']}@{config['host']}/{config['database']}"

# create a database connection.  THIS IS THE ACTUAL CONNECTION!
try:
    conn = create_engine(engine_uri)
except ArgumentError as e:
    print(f"create_engine: Argument Error: {e}")
    #sys.exit(1)
except NoSuchModuleError as e:
    print(f"create_engine: No Such Module Error: {e}")
    #sys.exit(1)
except Exception as e:
    print(f"create_engine: An error occurred: {e}")
    #sys.exit(1)
    
def my_sql_wrapper( query ):
    """ takes a query and returns a pandas dataframe for output """
    try:
        df = pd.read_sql( query, conn )
    except Exception as e:
        df = pd.DataFrame({'Query error': ["(see error message above)"]})
        msg = str(e).replace(") (",")\n(")
        print(msg)
    return df

def my_sql_statement( statement ):
    """ used with DDL, when the statement doesn't return any results. """
    try:
        with conn.begin() as x:
            x.execute(text(statement))
            x.commit()
    #    conn = create_engine(engine_uri)
        result = ""
    except Exception as e:
        result = f"Error: {str(e)}"
#    conn = create_engine(engine_uri)
    return result

app = Flask(__name__)

@app.route('/api/tables',methods=["GET","POST"])
def api_show_tables():
    df = my_sql_wrapper("show tables")
    json_data = df.to_json()
    return jsonify(json_data)

@app.route('/api/restaurants', methods=["GET", "POST"])
def restaurants():
    if request.method == "GET":
        full_string = 'SELECT * FROM restaurants'
        df = my_sql_wrapper(full_string)
        
        restaurants = []
        for index, row in df.iterrows():
            restaurant = OrderedDict([
                ('restaurant_id', row['restaurant_id']),
                ('restaurant_name', row['restaurant_name']),
                ('restaurant_formality_level', row['restaurant_formality_level']),
                ('restaurant_avg_total_per_person', row['restaurant_avg_total_per_person']),
                ('restaurant_location_id', row['restaurant_location_id']),
                ('restaurant_type', row['restaurant_type'])
            ])
            restaurants.append(restaurant)

        json_string = json.dumps(restaurants)
        return jsonify(json.loads(json_string))
    
    if request.method == "POST":
        restaurant_id = request.form.get('restaurant_id')
        restaurant_name = request.form.get('restaurant_name')
        restaurant_formality_level = request.form.get('restaurant_formality_level')
        restaurant_avg_total_per_person = request.form.get('restaurant_avg_total_per_person')
        restaurant_location_id = request.form.get('restaurant_location_id')
        restaurant_type = request.form.get('restaurant_type')
        
        # Construct SQL INSERT query
        s = f"INSERT INTO restaurants (restaurant_id, restaurant_name, restaurant_formality_level, restaurant_avg_total_per_person, restaurant_location_id, restaurant_type) VALUES ('{restaurant_id}', '{restaurant_name}', '{restaurant_formality_level}', '{restaurant_avg_total_per_person}', '{restaurant_location_id}', '{restaurant_type}')"

        try:
            # Create a connection from the engine
            with engine.connect() as connection:
                # Execute the query using the connection
                connection.execute(s)
                
            return f"Restaurant with the id: {restaurant_id} created successfully"
        
        except Exception as e:
            return f"Error creating restaurant: {str(e)}"
        
        
@app.route('/api/restaurants/<ID>')
def api_show_specific_restaurants(ID):

    id_list = ID.split(',')
    restaurants = []

    for ID in id_list:
    # Assuming my_sql_wrapper fetches data from the database
        df = my_sql_wrapper('SELECT * FROM restaurants WHERE restaurant_id = ' + ID)
    
    # Check if the DataFrame is empty (no data found for the given ID)
        if df.empty:
            return jsonify({"message": "Restaurant not found"}), 404  # Not Found
    
    # Convert DataFrame to a list of dictionaries with OrderedDict for consistent ordering
    
    for _, row in df.iterrows():
        restaurant = OrderedDict([
            ('restaurant_id', row['restaurant_id']),
            ('restaurant_name', row['restaurant_name']),
            ('restaurant_formality_level', row['restaurant_formality_level']),
            ('restaurant_avg_total_per_person', row['restaurant_avg_total_per_person']),
            ('restaurant_location_id', row['restaurant_location_id']),
            ('restaurant_type', row['restaurant_type'])
        ])
        restaurants.append(restaurant)

    return jsonify(restaurants)

@app.route('/api/reviews/<name>')
def api_show_reviews(name):
    df = my_sql_wrapper('select review_id, review_rating, review_text from review join restaurants on (restaurant_id = review_restaurant_id) where `restaurant_name` = "' + name + '"')
    json_data = df.to_json()
    return jsonify(json_data)

@app.route('/api/locations')
def api_show_locations():
    df = my_sql_wrapper("select * from locations")
    json_data = df.to_json()
    return jsonify(json_data)

@app.route('/api/accessibility')
def api_show_accessiblity():
    df = my_sql_wrapper("select * from accessibility")
    json_data = df.to_json()
    return jsonify(json_data)

<<<<<<< HEAD
@app.route('/api/accessibility/<name>')
def api_show_accessiblity_by_name(name):
    df = my_sql_wrapper('select * from accessibility join restaurants on (accessibility_restaurant_id = restaurant_id) where restaurant_name = "' + name + '"')
    json_data = df.to_json()
    return jsonify(json_data)

=======
@app.route('/api/menu')
def api_show_menu():
    df = my_sql_wrapper("select * from menu")
    json_data = df.to_json()
    return jsonify(json_data)

@app.route('/api/item')
def api_show_item():
    df = my_sql_wrapper("select * from item")
    json_data = df.to_json()
    return jsonify(json_data)


@app.route('/api/menu_items')
def api_show_menu_items():
    df = my_sql_wrapper("select * from menu_items")
    json_data = df.to_json()
    return jsonify(json_data)

@app.route('/api/dietary_preference')
def api_show_dietary_preference():
    df = my_sql_wrapper("select * from dietary_preference")
    json_data = df.to_json()
    return jsonify(json_data)

@app.route('/api/restaurants_reviews')
def get_restaurants_reviews():
    query = """
    SELECT r.restaurant_name, r.restaurant_type, r.restaurant_avg_total_per_person, rv.review_rating, rv.review_text
    FROM restaurants r
    LEFT JOIN review rv ON r.restaurant_id = rv.review_restaurant_id;
    """
    df = pd.read_sql(query, conn)
    json_data = df.to_json(orient='records')
    return jsonify(json_data)

@app.route('/api/bus_stops_near_vc')
def get_bus_stops_near_vc():
    query = """
    SELECT r.restaurant_name, r.restaurant_location_id, a.accessibility_nearby_bus_stops
    FROM restaurants r
    JOIN accessibility a ON r.restaurant_id = a.accessibility_restaurant_id
    WHERE a.accessibility_miles_to_VCU < 2; -- You can adjust the distance as needed
    """
    df = pd.read_sql(query, conn)
    json_data = df.to_json(orient='records')
    return jsonify(json_data)



>>>>>>> 33ada012e4f2c2151df87fd43f9c1a06a0311c53
if __name__ == '__main__':
    print(my_sql_wrapper("show tables"))
    app.run(debug=True)

