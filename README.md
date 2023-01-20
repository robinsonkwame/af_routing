# af_routing
Set of custom scripts for standing up and using OSRM related libraries for computing in community economics

# QuickStart

## 1 Setup
`./setup.sh`

## 2 run
export OSRM_BACKEND=192.168.0.101 # host the backend is on, typically localhost
`./run.sh`

Note: the frontend UI has very odd click behavior, see: https://github.com/Project-OSRM/osrm-frontend/issues/343

## (optional) Configure Chrome

go to `chrome://flags/#unsafely-treat-insecure-origin-as-secure`

and add `http://<localhost>:9966/`
