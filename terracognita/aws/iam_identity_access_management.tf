resource "aws_iam_access_key" "akiaigoxslebhqkui5ia" {
  status = "Active"
  user   = aws_iam_user.hns_ses_smtp_user.id
}

resource "aws_iam_access_key" "akiatlkm3pouhe6vekxi" {
  status = "Active"
  user   = aws_iam_user.andrew_gerst_developer.id
}

resource "aws_iam_access_key" "akiatlkm3poull7vxghm" {
  status = "Active"
  user   = aws_iam_user.andrew_gerst.id
}

resource "aws_iam_group" "administrators" {
  name = "Administrators"
  path = aws_iam_policy.arn_aws_iam__230478805928_policy_developers.path
}

resource "aws_iam_group" "developers" {
  name = "Developers"
  path = "/"
}

resource "aws_iam_group_membership" "administrators" {
  group = "Administrators"
  name  = ""
  users = [aws_iam_user.andrew_gerst.id]
}

resource "aws_iam_group_membership" "developers" {
  group = "Developers"
  name  = ""
  users = [aws_iam_user.andrew_gerst_developer.id]
}

resource "aws_iam_group_policy_attachment" "administrators_arn_aws_iam__aws_policy_administratoraccess" {
  group      = aws_iam_group.administrators.id
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_group_policy_attachment" "developers_arn_aws_iam__230478805928_policy_developers" {
  group      = aws_iam_policy.arn_aws_iam__230478805928_policy_developers.name
  policy_arn = "arn:aws:iam::230478805928:policy/Developers"
}

resource "aws_iam_policy" "arn_aws_iam__230478805928_policy_developers" {
  name   = "Developers"
  path   = "/"
  policy = "{\"Statement\":[{\"Action\":[\"iam:*\",\"apigateway:*\",\"s3:*\",\"logs:*\",\"lambda:*\",\"dynamodb:*\",\"cloudformation:*\"],\"Effect\":\"Allow\",\"Resource\":\"*\",\"Sid\":\"VisualEditor0\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_iam_role" "address_manager_dev_us_east_1_lambdarole" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"lambda.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
    name   = "address-manager-dev-lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:CreateLogGroup\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/address-manager-dev*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/address-manager-dev*:*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:BatchGetItem\",\"dynamodb:BatchWriteItem\",\"dynamodb:DeleteItem\",\"dynamodb:GetItem\",\"dynamodb:PutItem\",\"dynamodb:Query\",\"dynamodb:Scan\",\"dynamodb:UpdateItem\"],\"Resource\":[\"arn:aws:dynamodb:us-east-1:230478805928:table/address-manager-addresses-dev\"],\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = 3600
  name                 = "address-manager-dev-us-east-1-lambdaRole"
  path                 = aws_iam_policy.arn_aws_iam__230478805928_policy_developers.path
}

resource "aws_iam_role" "awsserviceroleforapigateway" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ops.apigateway.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "The Service Linked Role is used by Amazon API Gateway."
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForAPIGateway"
  path                 = "/aws-service-role/ops.apigateway.amazonaws.com/"
}

resource "aws_iam_role" "awsserviceroleforsupport" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"support.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Enables resource access for AWS to provide billing, administrative and support services"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForSupport"
  path                 = "/aws-service-role/support.amazonaws.com/"
}

resource "aws_iam_role" "awsservicerolefortrustedadvisor" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"trustedadvisor.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForTrustedAdvisor"
  path                 = "/aws-service-role/trustedadvisor.amazonaws.com/"
}

resource "aws_iam_role" "conference_manager_dev_us_east_1_lambdarole" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"lambda.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
    name   = "conference-manager-dev-lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:CreateLogGroup\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/conference-manager-dev*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/conference-manager-dev*:*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:BatchGetItem\",\"dynamodb:BatchWriteItem\",\"dynamodb:DeleteItem\",\"dynamodb:GetItem\",\"dynamodb:PutItem\",\"dynamodb:Query\",\"dynamodb:Scan\",\"dynamodb:UpdateItem\"],\"Resource\":[\"arn:aws:dynamodb:us-east-1:230478805928:table/conference-manager-attendees-dev\",\"arn:aws:dynamodb:us-east-1:230478805928:table/conference-manager-conferences-dev\",\"arn:aws:dynamodb:us-east-1:230478805928:table/conference-manager-talks-dev\"],\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = 3600
  name                 = "conference-manager-dev-us-east-1-lambdaRole"
  path                 = aws_iam_policy.arn_aws_iam__230478805928_policy_developers.path
}

resource "aws_iam_role" "mobilehub_service_role" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"mobilehub.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
    name   = "MobileHubServicePolicy"
    policy = "{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"cloudfront:CreateDistribution\",\n        \"cloudfront:DeleteDistribution\",\n        \"cloudfront:GetDistribution\",\n        \"cloudfront:GetDistributionConfig\",\n        \"cloudfront:ListDistributions\",\n        \"cloudfront:UpdateDistribution\",\n        \"cognito-identity:CreateIdentityPool\",\n        \"cognito-identity:UpdateIdentityPool\",\n        \"cognito-identity:DeleteIdentityPool\",\n        \"cognito-identity:SetIdentityPoolRoles\",\n        \"iam:CreateRole\",\n        \"iam:DeleteRole\",\n        \"iam:DeleteRolePolicy\",\n        \"iam:GetRole\",\n        \"iam:ListRolePolicies\",\n        \"iam:PassRole\",\n        \"iam:PutRolePolicy\",\n        \"iam:UpdateAssumeRolePolicy\",\n        \"lambda:CreateFunction\",\n        \"lambda:DeleteFunction\",\n        \"lambda:GetFunction\",\n        \"mobileanalytics:DeleteApp\",\n        \"mobileanalytics:GetReports\",\n        \"s3:CreateBucket\",\n        \"s3:DeleteObject\",\n        \"s3:DeleteObjectVersion\",\n        \"s3:DeleteVersion\",\n        \"s3:DeleteBucket\",\n        \"s3:DeleteBucketPolicy\",\n        \"s3:ListBucket\",\n        \"s3:ListBucketVersions\",\n        \"s3:PutObject\",\n        \"s3:PutObjectAcl\",\n        \"s3:PutObjectVersionAcl\",\n        \"sns:CreateTopic\",\n        \"sns:DeleteTopic\",\n        \"sns:CreatePlatformApplication\",\n        \"sns:DeletePlatformApplication\"\n      ],\n      \"Resource\": [\n        \"*\"\n      ]\n    }\n  ]\n}\n"
  }

  max_session_duration = 3600
  name                 = "MobileHub_Service_Role"
  path                 = aws_iam_policy.arn_aws_iam__230478805928_policy_developers.path
}

resource "aws_iam_role" "mx_atrium_dev_us_east_1_lambdarole" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"lambda.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
    name   = "mx-atrium-dev-lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:CreateLogGroup\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/mx-atrium-dev*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/mx-atrium-dev*:*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:BatchGetItem\",\"dynamodb:BatchWriteItem\",\"dynamodb:DeleteItem\",\"dynamodb:GetItem\",\"dynamodb:PutItem\",\"dynamodb:Query\",\"dynamodb:Scan\",\"dynamodb:UpdateItem\"],\"Resource\":[\"arn:aws:dynamodb:us-east-1:230478805928:table/mx-atrium-accounts-dev\"],\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = 3600
  name                 = "mx-atrium-dev-us-east-1-lambdaRole"
  path                 = aws_iam_policy.arn_aws_iam__230478805928_policy_developers.path
}

resource "aws_iam_role" "strings_manager_dev_us_east_1_lambdarole" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"lambda.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
    name   = "strings-manager-dev-lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:CreateLogGroup\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/strings-manager-dev*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/strings-manager-dev*:*:*\"],\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = 3600
  name                 = "strings-manager-dev-us-east-1-lambdaRole"
  path                 = aws_iam_policy.arn_aws_iam__230478805928_policy_developers.path
}

resource "aws_iam_role" "test_unauth_mobilehub_1680147353" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"\",\"Effect\":\"Allow\",\"Principal\":{\"Federated\":\"cognito-identity.amazonaws.com\"},\"Action\":\"sts:AssumeRoleWithWebIdentity\",\"Condition\":{\"StringEquals\":{\"cognito-identity.amazonaws.com:aud\":\"us-east-1:89e13821-7282-4b53-945b-543a7de2bc36\"},\"ForAnyValue:StringLike\":{\"cognito-identity.amazonaws.com:amr\":\"unauthenticated\"}}}]}"
  inline_policy {
    name   = "test_signin_MOBILEHUB_1680147353"
    policy = "{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"cognito-identity:*\"\n      ],\n      \"Resource\": [\n        \"*\"\n      ]\n    }\n  ]\n}\n"
  }

  max_session_duration = 3600
  name                 = "test_unauth_MOBILEHUB_1680147353"
  path                 = aws_iam_policy.arn_aws_iam__230478805928_policy_developers.path
}

resource "aws_iam_role" "test_unauth_mobilehub_184840211" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"\",\"Effect\":\"Allow\",\"Principal\":{\"Federated\":\"cognito-identity.amazonaws.com\"},\"Action\":\"sts:AssumeRoleWithWebIdentity\",\"Condition\":{\"StringEquals\":{\"cognito-identity.amazonaws.com:aud\":\"us-east-1:1ae14e5e-403d-4788-b40c-f1d24e9f990b\"},\"ForAnyValue:StringLike\":{\"cognito-identity.amazonaws.com:amr\":\"unauthenticated\"}}}]}"
  inline_policy {
    name   = "test_signin_MOBILEHUB_184840211"
    policy = "{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"cognito-identity:*\"\n      ],\n      \"Resource\": [\n        \"*\"\n      ]\n    }\n  ]\n}\n"
  }

  max_session_duration = 3600
  name                 = "test_unauth_MOBILEHUB_184840211"
  path                 = aws_iam_policy.arn_aws_iam__230478805928_policy_developers.path
}

resource "aws_iam_role" "word_racer_dev_us_east_1_lambdarole" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"lambda.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
    name   = "word-racer-dev-lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:CreateLogGroup\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/word-racer-dev*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/word-racer-dev*:*:*\"],\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = 3600
  name                 = "word-racer-dev-us-east-1-lambdaRole"
  path                 = aws_iam_policy.arn_aws_iam__230478805928_policy_developers.path
}

resource "aws_iam_role_policy" "address_manager_dev_us_east_1_lambdarole_address_manager_dev_lambda" {
  name   = "address-manager-dev-lambda"
  policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:CreateLogGroup\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/address-manager-dev*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/address-manager-dev*:*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:BatchGetItem\",\"dynamodb:BatchWriteItem\",\"dynamodb:DeleteItem\",\"dynamodb:GetItem\",\"dynamodb:PutItem\",\"dynamodb:Query\",\"dynamodb:Scan\",\"dynamodb:UpdateItem\"],\"Resource\":[\"arn:aws:dynamodb:us-east-1:230478805928:table/address-manager-addresses-dev\"],\"Effect\":\"Allow\"}]}"
  role   = "address-manager-dev-us-east-1-lambdaRole"
}

resource "aws_iam_role_policy" "conference_manager_dev_us_east_1_lambdarole_conference_manager_dev_lambda" {
  name   = "conference-manager-dev-lambda"
  policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:CreateLogGroup\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/conference-manager-dev*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/conference-manager-dev*:*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:BatchGetItem\",\"dynamodb:BatchWriteItem\",\"dynamodb:DeleteItem\",\"dynamodb:GetItem\",\"dynamodb:PutItem\",\"dynamodb:Query\",\"dynamodb:Scan\",\"dynamodb:UpdateItem\"],\"Resource\":[\"arn:aws:dynamodb:us-east-1:230478805928:table/conference-manager-attendees-dev\",\"arn:aws:dynamodb:us-east-1:230478805928:table/conference-manager-conferences-dev\",\"arn:aws:dynamodb:us-east-1:230478805928:table/conference-manager-talks-dev\"],\"Effect\":\"Allow\"}]}"
  role   = "conference-manager-dev-us-east-1-lambdaRole"
}

resource "aws_iam_role_policy" "mobilehub_service_role_mobilehubservicepolicy" {
  name   = "MobileHubServicePolicy"
  policy = "{  \"Version\": \"2012-10-17\",  \"Statement\": [    {      \"Effect\": \"Allow\",      \"Action\": [        \"cloudfront:CreateDistribution\",        \"cloudfront:DeleteDistribution\",        \"cloudfront:GetDistribution\",        \"cloudfront:GetDistributionConfig\",        \"cloudfront:ListDistributions\",        \"cloudfront:UpdateDistribution\",        \"cognito-identity:CreateIdentityPool\",        \"cognito-identity:UpdateIdentityPool\",        \"cognito-identity:DeleteIdentityPool\",        \"cognito-identity:SetIdentityPoolRoles\",        \"iam:CreateRole\",        \"iam:DeleteRole\",        \"iam:DeleteRolePolicy\",        \"iam:GetRole\",        \"iam:ListRolePolicies\",        \"iam:PassRole\",        \"iam:PutRolePolicy\",        \"iam:UpdateAssumeRolePolicy\",        \"lambda:CreateFunction\",        \"lambda:DeleteFunction\",        \"lambda:GetFunction\",        \"mobileanalytics:DeleteApp\",        \"mobileanalytics:GetReports\",        \"s3:CreateBucket\",        \"s3:DeleteObject\",        \"s3:DeleteObjectVersion\",        \"s3:DeleteVersion\",        \"s3:DeleteBucket\",        \"s3:DeleteBucketPolicy\",        \"s3:ListBucket\",        \"s3:ListBucketVersions\",        \"s3:PutObject\",        \"s3:PutObjectAcl\",        \"s3:PutObjectVersionAcl\",        \"sns:CreateTopic\",        \"sns:DeleteTopic\",        \"sns:CreatePlatformApplication\",        \"sns:DeletePlatformApplication\"      ],      \"Resource\": [        \"*\"      ]    }  ]}"
  role   = "MobileHub_Service_Role"
}

resource "aws_iam_role_policy" "mx_atrium_dev_us_east_1_lambdarole_mx_atrium_dev_lambda" {
  name   = "mx-atrium-dev-lambda"
  policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:CreateLogGroup\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/mx-atrium-dev*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/mx-atrium-dev*:*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:BatchGetItem\",\"dynamodb:BatchWriteItem\",\"dynamodb:DeleteItem\",\"dynamodb:GetItem\",\"dynamodb:PutItem\",\"dynamodb:Query\",\"dynamodb:Scan\",\"dynamodb:UpdateItem\"],\"Resource\":[\"arn:aws:dynamodb:us-east-1:230478805928:table/mx-atrium-accounts-dev\"],\"Effect\":\"Allow\"}]}"
  role   = "mx-atrium-dev-us-east-1-lambdaRole"
}

resource "aws_iam_role_policy" "strings_manager_dev_us_east_1_lambdarole_strings_manager_dev_lambda" {
  name   = "strings-manager-dev-lambda"
  policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:CreateLogGroup\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/strings-manager-dev*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/strings-manager-dev*:*:*\"],\"Effect\":\"Allow\"}]}"
  role   = "strings-manager-dev-us-east-1-lambdaRole"
}

resource "aws_iam_role_policy" "test_unauth_mobilehub_1680147353_test_signin_mobilehub_1680147353" {
  name   = "test_signin_MOBILEHUB_1680147353"
  policy = "{  \"Version\": \"2012-10-17\",  \"Statement\": [    {      \"Effect\": \"Allow\",      \"Action\": [        \"cognito-identity:*\"      ],      \"Resource\": [        \"*\"      ]    }  ]}"
  role   = "test_unauth_MOBILEHUB_1680147353"
}

resource "aws_iam_role_policy" "test_unauth_mobilehub_184840211_test_signin_mobilehub_184840211" {
  name   = "test_signin_MOBILEHUB_184840211"
  policy = "{  \"Version\": \"2012-10-17\",  \"Statement\": [    {      \"Effect\": \"Allow\",      \"Action\": [        \"cognito-identity:*\"      ],      \"Resource\": [        \"*\"      ]    }  ]}"
  role   = "test_unauth_MOBILEHUB_184840211"
}

resource "aws_iam_role_policy" "word_racer_dev_us_east_1_lambdarole_word_racer_dev_lambda" {
  name   = "word-racer-dev-lambda"
  policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:CreateLogGroup\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/word-racer-dev*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:us-east-1:230478805928:log-group:/aws/lambda/word-racer-dev*:*:*\"],\"Effect\":\"Allow\"}]}"
  role   = "word-racer-dev-us-east-1-lambdaRole"
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforapigateway_arn_aws_iam__aws_policy_aws_service_role_apigatewayservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"
  role       = aws_iam_role.awsserviceroleforapigateway.id
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforsupport_arn_aws_iam__aws_policy_aws_service_role_awssupportservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = aws_iam_role.awsserviceroleforsupport.id
}

resource "aws_iam_role_policy_attachment" "awsservicerolefortrustedadvisor_arn_aws_iam__aws_policy_aws_service_role_awstrustedadvisorservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = aws_iam_role.awsservicerolefortrustedadvisor.id
}

resource "aws_iam_user" "andrew_gerst" {
  name = "andrew.gerst"
  path = aws_iam_policy.arn_aws_iam__230478805928_policy_developers.path
}

resource "aws_iam_user" "andrew_gerst_developer" {
  name = "andrew.gerst.developer"
  path = aws_iam_policy.arn_aws_iam__230478805928_policy_developers.path
}

resource "aws_iam_user" "hns_ses_smtp_user" {
  name = "hns-ses-smtp-user"
  path = aws_iam_policy.arn_aws_iam__230478805928_policy_developers.path
}

resource "aws_iam_user_policy" "hns_ses_smtp_user_amazonsessendingaccess" {
  name   = "AmazonSesSendingAccess"
  policy = "{  \"Version\": \"2012-10-17\",  \"Statement\": [    {      \"Effect\": \"Allow\",      \"Action\": \"ses:SendRawEmail\",      \"Resource\": \"*\"    }  ]}"
  user   = aws_iam_user.hns_ses_smtp_user.id
}

