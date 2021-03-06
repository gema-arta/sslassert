#!/bin/sh
#
# Sample to see how this works
#

export HOSTPORT=www.paypal.com
export URLPATH=/

source ./sslassert.sh


sslassert 'secure-renegotiation               = on'
sslassert 'compression                        = off'
sslassert 'certificate-length                 = 2048'
sslassert 'protocol-ssl-v2                    = off'
sslassert 'protocol-ssl-v3                    = on'
sslassert 'protocol-tls-v10                   = on'
sslassert 'protocol-tls-v11                   = on'
sslassert 'protocol-tls-v12                   = on'
sslassert 'crypto-weak                        = off'
sslassert 'crypto-camellia                    = off'
sslassert 'crypto-forward-secrecy             = off'
sslassert 'crypto-3des                        = on'
sslassert 'crypto-md5                         = on'
sslassert 'crypto-rc4                         = on'
sslassert 'certificate-chain-length          -gt 1'

exit $SSLASSERT_EXIT
