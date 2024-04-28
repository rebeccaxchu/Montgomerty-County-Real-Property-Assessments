import json

# specify the path to your JSON configuration file
config_file_path= 'config/credentials.json'

# load the JSON configuration file
with open(config_file_path, 'r') as config_file:
    config = json.load(config_file)

# Print the configuration
print(config["ConnectionString"])

Connection_String = config["ConnectionString"]