#!/bin/bash
source setup.sh
# Check an MD5 hash of the public key to ensure that it matches with what is in a CSR or private key
openssl x509 -noout -modulus -in $CRT | openssl md5
openssl rsa -noout -modulus -in $KEY | openssl md5
openssl req -noout -modulus -in $CSR | openssl md5

# Check an SSL connection. All the certificates (including Intermediates) should be displayed
openssl s_client -host $DOMAIN -port 443
