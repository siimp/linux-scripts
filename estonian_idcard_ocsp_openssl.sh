#!/usr/bin/env sh
openssl ocsp -issuer ESTEID-SK_2015.pem.crt -cert idcard.crt -VAfile SK_OCSP_RESPONDER_2011.pem.cer -url http://ocsp.sk.ee

