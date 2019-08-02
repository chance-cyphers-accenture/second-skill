echo "ENV: $1"


# Create AWS config

mkdir ~/.aws

echo "[ask_cli_default]" > ~/.aws/credentials

echo "aws_access_key_id=" $AWS_ACCESS_KEY_ID
echo "aws_access_key_id=$AWS_ACCESS_KEY_ID" >> ~/.aws/credentials

echo "aws_secret_access_key=" $AWS_SECRET_ACCESS_KEY
echo "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" >> ~/.aws/credentials



# Create ASK config

touch ~/.aws/config

sed -e s/ASK_ACCESS_TOKEN/${ASK_ACCESS_TOKEN}/g -e \
    s/ASK_REFRESH_TOKEN/${ASK_REFRESH_TOKEN}/g conf/ask_cli.json > ~/.ask/cli_config




ask deploy