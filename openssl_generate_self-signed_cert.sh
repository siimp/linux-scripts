#!/usr/bin/env sh
# to validate RSA keypairs diff <(openssl x509 -in cert.pem -noout -modulus) <(openssl rsa -in key.pem -noout -modulus)
openssl req -x509 -sha256 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 -nodes -subj '/CN=*.localhost'
