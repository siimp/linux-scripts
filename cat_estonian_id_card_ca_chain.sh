#!/usr/bin/env sh

wget https://www.sk.ee/upload/files/EE_Certification_Centre_Root_CA.pem.crt
wget https://www.sk.ee/upload/files/ESTEID-SK_2011.pem.crt
wget https://www.sk.ee/upload/files/ESTEID-SK_2015.pem.crt
wget https://www.sk.ee/upload/files/EID-SK_2011.pem.crt
wget https://www.sk.ee/upload/files/EID-SK_2016.pem.crt
cat 'EE_Certification_Centre_Root_CA.pem.crt' 'ESTEID-SK_2011.pem.crt' 'ESTEID-SK_2015.pem.crt' \
'EID-SK_2011.pem.crt' 'EID-SK_2016.pem.crt' > id.crt
rm 'EE_Certification_Centre_Root_CA.pem.crt' 'ESTEID-SK_2011.pem.crt' 'ESTEID-SK_2015.pem.crt' \
'EID-SK_2011.pem.crt' 'EID-SK_2016.pem.crt'
