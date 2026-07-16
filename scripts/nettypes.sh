#!/bin/bash
ip -details -j l | { echo "ifname, link_type, linkinfo.info_data.type, linkinfo.info_kind, linkinfo.info_slave_kind"; jq -r '.[]|"\(.ifname), \(.link_type), \(.linkinfo.info_data.type), \(.linkinfo.info_kind), \(.linkinfo.info_slave_kind)"'; } | column -t -s ','

