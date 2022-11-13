resource "aws_dynamodb_table" "address_manager_addresses_dev" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  attribute {
    name = "id"
    type = "S"
  }

  billing_mode = "PROVISIONED"
  hash_key     = "id"
  name         = "address-manager-addresses-dev"
  point_in_time_recovery {
    enabled = false
  }

  read_capacity = 1
  ttl {
    attribute_name = ""
  }

  write_capacity = 1
}

resource "aws_dynamodb_table" "conference_manager_attendees_dev" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  attribute {
    name = "id"
    type = "S"
  }

  billing_mode = "PROVISIONED"
  hash_key     = "id"
  name         = "conference-manager-attendees-dev"
  point_in_time_recovery {
    enabled = false
  }

  read_capacity = 1
  ttl {
    attribute_name = ""
  }

  write_capacity = 1
}

resource "aws_dynamodb_table" "conference_manager_conferences_dev" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  attribute {
    name = "id"
    type = "S"
  }

  billing_mode = "PROVISIONED"
  hash_key     = "id"
  name         = "conference-manager-conferences-dev"
  point_in_time_recovery {
    enabled = false
  }

  read_capacity = 1
  ttl {
    attribute_name = ""
  }

  write_capacity = 1
}

resource "aws_dynamodb_table" "conference_manager_talks_dev" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  attribute {
    name = "id"
    type = "S"
  }

  billing_mode = "PROVISIONED"
  hash_key     = "id"
  name         = "conference-manager-talks-dev"
  point_in_time_recovery {
    enabled = false
  }

  read_capacity = 1
  ttl {
    attribute_name = ""
  }

  write_capacity = 1
}

resource "aws_dynamodb_table" "mx_atrium_accounts_dev" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  attribute {
    name = "id"
    type = "S"
  }

  billing_mode = "PROVISIONED"
  hash_key     = "id"
  name         = "mx-atrium-accounts-dev"
  point_in_time_recovery {
    enabled = false
  }

  read_capacity = 1
  ttl {
    attribute_name = ""
  }

  write_capacity = 1
}

