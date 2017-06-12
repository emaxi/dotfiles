#!/bin/bash

echo 'Checking Google:'
nslookup $1 8.8.8.8

echo 'Checking Level3:'
nslookup $1 209.244.0.3

echo 'Checking Verisign:'
nslookup $1 64.6.64.6

echo 'Checking FreeDNS:'
nslookup $1 37.235.1.174

echo 'Checking Dyn:'
nslookup $1 216.146.35.35

echo 'Checking OpenDNS:'
nslookup $1 208.67.222.222
