resource "aws_lambda_function" "address_manager_dev_app" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  architectures = ["x86_64"]
  environment {
    variables = {
      ADDRESSES_TABLE = aws_dynamodb_table.address_manager_addresses_dev.id
    }

  }

  ephemeral_storage {
    size = 512
  }

  function_name                  = "address-manager-dev-app"
  handler                        = "app/app.handler"
  memory_size                    = 1024
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = aws_iam_role.address_manager_dev_us_east_1_lambdarole.arn
  runtime                        = "nodejs12.x"
  source_code_hash               = "tjsZmGAy/8IJ2/5mZinlX8Iv8MmUL3gHlVdpwFSey/8="
  timeout                        = 6
  tracing_config {
    mode = "PassThrough"
  }

}

resource "aws_lambda_function" "conference_manager_dev_app" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  architectures = ["x86_64"]
  environment {
    variables = {
      ATTENDEES_TABLE   = aws_dynamodb_table.conference_manager_attendees_dev.id
      CONFERENCES_TABLE = aws_dynamodb_table.conference_manager_conferences_dev.id
      TALKS_TABLE       = aws_dynamodb_table.conference_manager_talks_dev.id
    }

  }

  ephemeral_storage {
    size = 512
  }

  function_name                  = "conference-manager-dev-app"
  handler                        = "app/app.handler"
  memory_size                    = 1024
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = aws_iam_role.conference_manager_dev_us_east_1_lambdarole.arn
  runtime                        = "nodejs12.x"
  source_code_hash               = "8xPPMtlvMPhOsomlKw7TTjjMYfBUH1TY+Rl4oqUdQc8="
  timeout                        = 6
  tracing_config {
    mode = "PassThrough"
  }

}

resource "aws_lambda_function" "mx_atrium_dev_app" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  architectures = ["x86_64"]
  environment {
    variables = {
      ACCOUNTS_TABLE = aws_dynamodb_table.mx_atrium_accounts_dev.id
      MX_API_KEY     = "26eef1e5-6df7-b7a3-9caa-85cb7c7e25f5"
      MX_CLIENT_ID   = "3f445873-e02b-4dec-9e47-00af7bc292fa"
      MX_DOMAIN      = "https://vestibule.mx.com"
    }

  }

  ephemeral_storage {
    size = 512
  }

  function_name                  = "mx-atrium-dev-app"
  handler                        = "app/app.handler"
  memory_size                    = 1024
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = aws_iam_role.mx_atrium_dev_us_east_1_lambdarole.arn
  runtime                        = "nodejs12.x"
  source_code_hash               = "HPbp0Y0JdtLR8DcyoJQbS8I4oXtQRe9FL7WAzXuSqWI="
  timeout                        = 6
  tracing_config {
    mode = "PassThrough"
  }

}

resource "aws_lambda_function" "strings_manager_dev_app" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  architectures = ["x86_64"]
  ephemeral_storage {
    size = 512
  }

  function_name                  = "strings-manager-dev-app"
  handler                        = "app/app.handler"
  memory_size                    = 1024
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = aws_iam_role.strings_manager_dev_us_east_1_lambdarole.arn
  runtime                        = "nodejs14.x"
  source_code_hash               = "Kh/brwRzZUW1zglAYBHaPDSUWVpmV2mjAXZgPgH1L/0="
  timeout                        = 6
  tracing_config {
    mode = "PassThrough"
  }

}

resource "aws_lambda_function" "word_racer_dev_hello" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  architectures = ["x86_64"]
  ephemeral_storage {
    size = 512
  }

  function_name                  = "word-racer-dev-hello"
  handler                        = "handler.hello"
  memory_size                    = 1024
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = aws_iam_role.word_racer_dev_us_east_1_lambdarole.arn
  runtime                        = "nodejs12.x"
  source_code_hash               = "cyxHMa4AUbD32dsZKaSQSZcpGWi17fBHLmdIPryciFg="
  timeout                        = 6
  tracing_config {
    mode = "PassThrough"
  }

}

