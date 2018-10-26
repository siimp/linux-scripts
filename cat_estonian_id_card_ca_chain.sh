#!/usr/bin/env sh

wget https://www.sk.ee/upload/files/EE_Certification_Centre_Root_CA.pem.crt
wget https://www.sk.ee/upload/files/ESTEID-SK_2011.pem.crt
wget https://www.sk.ee/upload/files/ESTEID-SK_2015.pem.crt
wget https://www.sk.ee/upload/files/EID-SK_2011.pem.crt
wget https://www.sk.ee/upload/files/EID-SK_2016.pem.crt
wget http://c.sk.ee/EE-GovCA2018.pem.crt
wget http://c.sk.ee/esteid2018.pem.crt

# FOR LIVE ENVIRONMENT
cat EE_Certification_Centre_Root_CA.pem.crt ESTEID-SK_2011.pem.crt ESTEID-SK_2015.pem.crt \
EID-SK_2011.pem.crt EID-SK_2016.pem.crt EE-GovCA2018.pem.crt esteid2018.pem.crt > id.crt

rm EE_Certification_Centre_Root_CA.pem.crt ESTEID-SK_2011.pem.crt ESTEID-SK_2015.pem.crt \
EID-SK_2011.pem.crt EID-SK_2016.pem.crt EE-GovCA2018.pem.crt esteid2018.pem.crt

# FOR DEV/TEST ENVIRONMENT
wget https://www.sk.ee/upload/files/TEST_of_EE_Certification_Centre_Root_CA.pem.crt
wget https://www.sk.ee/upload/files/TEST_of_ESTEID-SK_2011.pem.crt
wget https://www.sk.ee/upload/files/TEST_of_ESTEID-SK_2015.pem.crt
wget https://www.sk.ee/upload/files/TEST_of_EID-SK_2011.pem.crt
wget https://www.sk.ee/upload/files/TEST_of_EID-SK_2016.pem.crt
wget https://sk.ee/upload/files/TEST_of_EE-GovCA2018.pem.crt
wget https://sk.ee/upload/files/TEST_of_ESTEID2018.pem.crt

cat id.crt TEST_of_EE_Certification_Centre_Root_CA.pem.crt TEST_of_ESTEID-SK_2011.pem.crt TEST_of_ESTEID-SK_2015.pem.crt \
TEST_of_EID-SK_2011.pem.crt TEST_of_EID-SK_2016.pem.crt TEST_of_EE-GovCA2018.pem.crt TEST_of_ESTEID2018.pem.crt test-id.crt

rm TEST_of_EE_Certification_Centre_Root_CA.pem.crt TEST_of_ESTEID-SK_2011.pem.crt TEST_of_ESTEID-SK_2015.pem.crt \
TEST_of_EID-SK_2011.pem.crt TEST_of_EID-SK_2016.pem.crt TEST_of_EE-GovCA2018.pem.crt TEST_of_ESTEID2018.pem.crt
