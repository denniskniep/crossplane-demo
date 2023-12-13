openssl genrsa -out self-signed-ca.key 2048

openssl req -new -subj "/C=DE/ST=/L=/O=Security/OU=IT/CN=k3d-registry.localhost" -key self-signed-ca.key -out self-signed-ca.csr

openssl x509 -req -in self-signed-ca.csr -signkey self-signed-ca.key -out self-signed-ca.crt -days 3650 -sha256 -extfile v3.ext

rm self-signed-ca.csr
