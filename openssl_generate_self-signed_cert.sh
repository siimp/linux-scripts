#!/usr/bin/env sh
openssl req -x509 -sha256 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 -nodes -subj '/CN=*.localhost'
