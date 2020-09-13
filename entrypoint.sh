#!/bin/bash

nohup openfortivpn -c /vpn.conf > /vpn.log 2>&1 &
tail -100f /vpn.log
