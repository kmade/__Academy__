#!/bin/bash

DOMAIN=${1:-domain}
PASSWORD=veryS3cr3tpassw0rd
VALIDITY=365

echo "Domain name: $DOMAIN";
echo "OpenSSL: `openssl version -a`"
echo "-----------------------------"
mkdir -p out

KEY="out/${DOMAIN}.key"
CRT="out/${DOMAIN}.crt"
CSR="out/${DOMAIN}.csr"
PFX="out/${DOMAIN}.pfx"
