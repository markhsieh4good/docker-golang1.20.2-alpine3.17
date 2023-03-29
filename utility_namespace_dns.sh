#!/bin/bash 

if [ ! -e "/etc/resolv.conf" ]; then
  touch /etc/resolv.conf
fi

if [ -e "/etc/resolv.conf" ]; then
  echo "8.8.8.8 nameserver" | tee -a /etc/resolv.conf >/dev/null
  echo "168.95.1.1 nameserver" | tee -a /etc/resolv.conf >/dev/null
  echo "61.31.1.1 nameserver" | tee -a /etc/resolv.conf >/dev/null
  echo "208.67.222.222 nameserver" | tee -a /etc/resolv.conf >/dev/null
fi
