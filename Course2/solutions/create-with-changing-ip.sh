aws cloudformation create-stack --stack-name $1 --template-body file://$2  --parameters ParameterKey=MyIp,ParameterValue=$(curl -s http://checkip.amazonaws.com/)/32 --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1