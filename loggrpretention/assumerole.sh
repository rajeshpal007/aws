eval $(aws sts assume-role \
 --role-arn arn:aws:iam::$1:role/OrganizationAccountAccessRole \
 --role-session-name Assume_Role_OrganizationAccountAccessRole \
 --query 'join(``,[`export AWS_ACCESS_KEY_ID=`,Credentials.AccessKeyId, `,export AWS_SECRET_ACCESS_KEY=`,Credentials.SecretAccessKey, `,export AWS_SESSION_TOKEN=`,Credentials.SessionToken])' \
 --output text | tr ',' '\n')

echo `aws sts get-caller-identity`