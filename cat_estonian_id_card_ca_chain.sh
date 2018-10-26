#!/usr/bin/env sh

wget https://www.sk.ee/upload/files/EE_Certification_Centre_Root_CA.pem.crt
wget https://www.sk.ee/upload/files/ESTEID-SK_2011.pem.crt
wget https://www.sk.ee/upload/files/ESTEID-SK_2015.pem.crt
wget https://www.sk.ee/upload/files/EID-SK_2011.pem.crt
wget https://www.sk.ee/upload/files/EID-SK_2016.pem.crt
wget http://c.sk.ee/EE-GovCA2018.pem.crt
wget http://c.sk.ee/esteid2018.pem.crt

cat 'EE_Certification_Centre_Root_CA.pem.crt' 'ESTEID-SK_2011.pem.crt' 'ESTEID-SK_2015.pem.crt' \
'EID-SK_2011.pem.crt' 'EID-SK_2016.pem.crt' 'EE-GovCA2018.pem.crt' 'esteid2018.pem.crt' > id.crt

rm 'EE_Certification_Centre_Root_CA.pem.crt' 'ESTEID-SK_2011.pem.crt' 'ESTEID-SK_2015.pem.crt' \
'EID-SK_2011.pem.crt' 'EID-SK_2016.pem.crt' 'EE-GovCA2018.pem.crt' 'esteid2018.pem.crt'

