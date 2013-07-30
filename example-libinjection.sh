#!/bin/sh
#
# Sample to see how this works
#

export HOSTPORT=libinjection.client9.com:443
export URLPATH=/

source ./sslassert.sh

echo ""
sslassert "protocol-ssl-v2            = off"
sslassert "protocol-ssl-v3            = off"
sslassert "protocol-tls-v10           = on"
sslassert "protocol-tls-v11           = on"
sslassert "protocol-tls-v12           = on"
sslassert 'protocol-tls12-suite-allowed-on-tls10 = off'
sslassert "compression                = off"
sslassert "certificate-chain-length -gt 1"
sslassert "self-signed-certificates-in-chain = off"
sslassert "crypto-suite-count                     -eq 16"
sslassert "cipher-suite-ECDHE-RSA-AES128-GCM-SHA256 = on"
sslassert "cipher-suite-ECDHE-RSA-AES256-GCM-SHA384 = on"
sslassert "cipher-suite-ECDHE-RSA-AES128-SHA256     = on"
sslassert "cipher-suite-ECDHE-RSA-AES256-SHA384     = on"
sslassert "cipher-suite-ECDHE-RSA-RC4-SHA           = on"

sslassert "cipher-suite-ECDHE-RSA-AES128-SHA        = on"
sslassert "cipher-suite-ECDHE-RSA-AES256-SHA        = on"
sslassert "cipher-suite-ECDHE-RSA-DES-CBC3-SHA      = on"

sslassert "cipher-suite-AES128-GCM-SHA256           = on"
sslassert "cipher-suite-AES256-GCM-SHA384           = on"
sslassert "cipher-suite-AES128-SHA256               = on"
sslassert "cipher-suite-AES256-SHA256               = on"

sslassert "cipher-suite-RC4-SHA                     = on"
sslassert "cipher-suite-AES128-SHA                  = on"
sslassert "cipher-suite-AES256-SHA                  = on"
sslassert "cipher-suite-DES-CBC3-SHA                = on"

sslassert "crypto-weak                = off"
sslassert "crypto-null                = off"
sslassert "crypto-adh                 = off"
sslassert "crypto-camellia            = off"
sslassert "crypto-seed                = off"
sslassert "crypto-idea                = off"
sslassert "crypto-md5                 = off"
sslassert "crypto-winxp-ie-compatible = on"
sslassert "beast-attack               = off"


echo ""
#echo "$SSLFACTS"

exit $SSLFACTS_EXIT

