# To find out if private key matches against x509 cert, rsa public key or CSR
diff <(openssl x509 -in public.pem -noout -modulus) <(openssl rsa -in private.pem -noout -modulus)
diff <(openssl rsa -pubin -in public-key.pem -noout -modulus) <(openssl rsa -in private.pem -noout -modulus)
diff <(openssl req -in public-csr.pem -noout -modulus) <(openssl rsa -in private.pem -noout -modulus)
