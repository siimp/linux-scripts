#!/usr/bin/env sh
openssl ocsp -issuer ESTEID-SK_2015.pem.crt -cert idcard_authentication.crt -VAfile SK_OCSP_RESPONDER_2011.pem.cer -url http://ocsp.sk.ee

# in OCSP test environment (https://demo.sk.ee/upload_cert/index.php)
# openssl ocsp -issuer ESTEID-SK_2015.pem.crt -cert idcard_authentication.crt -VAfile TEST_of_SK_OCSP_RESPONDER_2011.pem.cer -url http://demo.sk.ee/ocsp
