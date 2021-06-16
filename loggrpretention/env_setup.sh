. unassumerole.sh
echo "Base Account"
aws sts get-caller-identity --query 'Account' --output json
. assumerole.sh $1
echo "Current Account"
aws sts get-caller-identity --query 'Account' --output json
