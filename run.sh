docker run -d -t -i -p 5000:5000 -v "${PWD}:/data" ghcr.io/project-osrm/osrm-backend osrm-routed --algorithm mld /data/us-midwest-latest.osm.pbf

docker run -p 9966:9966 -e OSRM_BACKEND='http://192.168.0.101:5000' -e OSRM_CENTER='42.279594,-83.732124' -e OSRM_ZOOM='13' -e OSRM_LABEL='Car (fastest)' osrm/osrm-frontend
