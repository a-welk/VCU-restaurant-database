from flask import Flask, jsonify
import os
import sys
import pandas as pd
import pymysql
from tabulate import tabulate
from dotenv import load_dotenv
from sqlalchemy import create_engine, text
from sqlalchemy.exc import OperationalError, ProgrammingError
from IPython.display import display, Markdown

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

@app.route('/api/tables')
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
        restaurant = {
            'restaurant_id': request.form.get('restaurant_id'),
            'restaurant_name': request.form.get('restaurant_name'),
            'restaurant_formality_level': request.form.get('restaurant_formality_level'),
            'restaurant_avg_total_per_person': request.form.get('restaurant_avg_total_per_person'),
            'restaurant_location_id': request.form.get('restaurant_location_id'),
            'restaurant_type': request.form.get('restaurant_type')
        }

@app.route('/api/restaurants/<ID>')
def api_show_specific_restaurants(ID):
    df = my_sql_wrapper('select * from restaurants where restaurant_id = ' + ID)
    json_data = df.to_json()
    return jsonify(json_data)

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

if __name__ == '__main__':
    print(my_sql_wrapper("show tables"))
    app.run(debug=True)
