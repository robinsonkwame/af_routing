
# Following the wonderful QuickStart here
# [QuickStart](https://github.com/Project-OSRM/osrm-backend#quick-start)

# ... first we d/l the file for the midwest
wget -nc http://download.geofabrik.de/north-america/us-midwest-latest.osm.pbf

echo "... step 1: convert map to drivable by a car. [~12 minutes]"

docker run -t -v "${PWD}:/data" ghcr.io/project-osrm/osrm-backend osrm-extract -p /opt/car.lua /data/us-midwest-latest.osm.pbf

echo "... step 2: partition the routing data [~12 minutes]"
docker run -t -v "${PWD}:/data" ghcr.io/project-osrm/osrm-backend osrm-partition /data/us-midwest-latest.osm.pbf

echo "... step 3: customize the data for the backend [2 minutes]"
docker run -t -v "${PWD}:/data" ghcr.io/project-osrm/osrm-backend osrm-customize /data/us-midwest-latest.osm.pbf