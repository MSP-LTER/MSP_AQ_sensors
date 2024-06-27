# MSP_AQ_sensors
Small network of purple air sensors associated with lichens
A shell script uses the Purple Air access key to pull data from all sensors IDs listed in the "sensor" file for the past month. 
Fields to be pulled from the sensor include: sensor_index, humidity, temperature, pressure, voc, pm2.5_atm_a, pm2.5_atm_b. field descriptions can be found [here](https://community.purpleair.com/t/api-history-fields-descriptions/4652)
register with Purple Air to get an API key and add that key variable to a .env under .gitignore
Each sensor will have a temporary file created with the past month's data that gets appended to a larger csv file for each sensor
The plan is to publish historical data for the sensors in our network ever 6 months on EDI
