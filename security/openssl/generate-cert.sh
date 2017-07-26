#!/bin/bash
source setup.sh
# Step 1
# Generate a Private Key and a Certificate
# openssl req \
#   -x509 \
#   -sha256 \
#   -nodes \
#   -days $VALIDITY \
#   -newkey rsa:2048 \
#   -keyout $KEY \
#   -out $CRT \
#   -passin pass:$PASSWORD
# # Step 2
# # Generate a certificate signing request based on an existing certificate
# openssl x509 \
#   -x509toreq \
#   -in $CRT \
#   -signkey $KEY \
#   -out $CSR \
#   -passin pass:$PASSWORD

# # Step 3
# # Convert a PEM certificate file and a private key to PKCS#12 (.pfx .p12)
# openssl pkcs12 \
#     -inkey $KEY \
#     -in $CRT \
#     -export -out $PFX \
#     -passin pass:$PASSWORD \
#     -password pass:$PASSWORD

# Step 4
# Generate public key from private
openssl rsa -pubout -in $KEY -out "${KEY}.pub"
