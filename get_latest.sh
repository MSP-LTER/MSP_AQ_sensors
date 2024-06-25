source .env

last_month="$(date -I -v -31d | sed s/-..$//)"

start_of_last_month="${last_month}-01T00:00:00.00-05:00"

# fields: https://community.purpleair.com/t/api-history-fields-descriptions/4652

for sensor in $(cat sensors); do
	curl "https://api.purpleair.com/v1/sensors/${sensor}/history/csv?fields=$(cat fields)&start_timestamp=${start_of_last_month}" \
		-H "X-API-Key: ${PURPLE_AIR_API_KEY}" >> tempdata/$sensor.$last_month.csv

	cat tempdata/$sensor.*.csv data/$sensor.csv | sort -u > data/$sensor.csv
done