#!/bin/bash
source setup.sh

openssl req -text -noout -verify -in $CSR
openssl rsa -in $KEY -check
openssl x509 -in $CRT -text -noout
openssl pkcs12 -info -in $PFX -passin pass:$PASSWORD
