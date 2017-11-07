curl --insecure -E ../example-pki-scripts/kirk-signed.pem --key ../example-pki-scripts/kirk.key.pem https://localhost:9200/_cat/indices?v
echo
curl --insecure -E ../example-pki-scripts/kirk-signed.pem --key ../example-pki-scripts/kirk.key.pem https://localhost:9200/_cat/nodes?v
