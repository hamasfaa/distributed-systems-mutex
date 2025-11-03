#!/bin/bash

python3 ./kv.py --id 1 --tcp 8000 --udp 8100 --peers 192.168.122.179:8000=2,192.168.122.3:8000=3 --logger-addr 192.168.122.250:9000 --numnodes 3 --use-mutex 0