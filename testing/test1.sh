#!/bin/bash
#

# Single PUT to node 1
python3 ./kvclient.py --nodes 192.168.122.167:8000,192.168.122.179:8000,192.168.122.3:8000,192.168.122.161:8000,192.168.122.193:8000 cmd --node 1  "PUT color blue"


# GET from node 2
python3 ./kvclient.py  --nodes 192.168.122.167:8000,192.168.122.179:8000,192.168.122.3:8000,192.168.122.161:8000,192.168.122.193:8000 cmd --node 2   "GET color"


# Race two writers (great for no-mutex demo)
python3 ./kvclient.py --nodes 192.168.122.167:8000,192.168.122.179:8000,192.168.122.3:8000,192.168.122.161:8000,192.168.122.193:8000 race  "PUT color blue" "PUT color red"


# Read the key from ALL nodes after the race
python3 ./kvclient.py --nodes 192.168.122.167:8000,192.168.122.179:8000,192.168.122.3:8000,192.168.122.161:8000,192.168.122.193:8000 getall color