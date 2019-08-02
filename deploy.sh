echo "ENV: $1"

mkdir ~/.aws

echo "[ask_cli_default]" > ~/.aws/credentials
echo "aws_access_key_id=$AWS_ACCESS_KEY_ID" >> ~/.aws/credentials
echo "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" >> ~/.aws/credentials

ask deploy