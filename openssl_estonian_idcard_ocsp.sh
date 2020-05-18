#!/usr/bin/env sh

# getting public certificates via LDAP
# ldapsearch -x -h ldap.sk.ee -b "ou=authentication,o=ESTEID,c=EE" "(serialNumber=<PERSON_ID_CODE_HERE>)"
# new ESTEID 2018 ldap service
# ldapsearch -x -H ldaps://esteid.ldap.sk.ee -b "ou=Authentication,o=Identity card of Estonian citizen,dc=ESTEID,c=EE" "(serialNumber=PNOEE-<PERSON_ID_CODE_HERE>)"

openssl ocsp -issuer ESTEID-SK_2015.pem.crt -cert idcard_authentication.crt -VAfile SK_OCSP_RESPONDER_2011.pem.cer -url http://ocsp.sk.ee

# in OCSP test environment upload certificate at https://demo.sk.ee/upload_cert/index.php then test with:
# openssl ocsp -CAfile TEST_of_EE_Certification_Centre_Root_CA.pem.cer -issuer TEST_of_EID-SK_2016.pem.cer -cert idcard_authentication.pem.cer -VAfile TEST_of_SK_OCSP_RESPONDER_2011.pem.cer -url http://demo.sk.ee/ocsp
