accountId=$(aws sts get-caller-identity --query "Account" --output=text)

aws s3control put-public-access-block --public-access-block-configuration  \
BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true \
 --account-id $accountId