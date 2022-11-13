resource "aws_api_gateway_deployment" "McHsA" {
  rest_api_id = aws_api_gateway_rest_api.BqahA.id
}

resource "aws_api_gateway_deployment" "b1xxlj_q8sxd5phn7" {
  rest_api_id = aws_api_gateway_rest_api.q8sxd5phn7.id
}

resource "aws_api_gateway_deployment" "bbdlxc_6tpeua70ga" {
  rest_api_id = aws_api_gateway_rest_api.kKkKC.id
}

resource "aws_api_gateway_deployment" "ek5qe4_81r95d67sj" {
  rest_api_id = aws_api_gateway_rest_api.DSOMY.id
}

resource "aws_api_gateway_resource" "BnHHg" {
  parent_id   = ""
  path_part   = ""
  rest_api_id = aws_api_gateway_rest_api.DSOMY.id
}

resource "aws_api_gateway_resource" "LrcuH" {
  parent_id   = ""
  path_part   = ""
  rest_api_id = aws_api_gateway_rest_api.BqahA.id
}

resource "aws_api_gateway_resource" "ZLzFl" {
  parent_id   = "dgetgcb262"
  path_part   = "{proxy+}"
  rest_api_id = aws_api_gateway_rest_api.kKkKC.id
}

resource "aws_api_gateway_resource" "amJmY" {
  parent_id   = "whnmy5lm0i"
  path_part   = "{proxy+}"
  rest_api_id = aws_api_gateway_rest_api.BqahA.id
}

resource "aws_api_gateway_resource" "edDev" {
  parent_id   = ""
  path_part   = ""
  rest_api_id = aws_api_gateway_rest_api.kKkKC.id
}

resource "aws_api_gateway_resource" "q8sxd5phn7_7pzibf" {
  parent_id   = "8eeqgnv6sg"
  path_part   = "{proxy+}"
  rest_api_id = aws_api_gateway_rest_api.q8sxd5phn7.id
}

resource "aws_api_gateway_resource" "q8sxd5phn7_8eeqgnv6sg" {
  parent_id   = ""
  path_part   = ""
  rest_api_id = aws_api_gateway_rest_api.q8sxd5phn7.id
}

resource "aws_api_gateway_resource" "tmOfV" {
  parent_id   = "nj9ulad89f"
  path_part   = "{proxy+}"
  rest_api_id = aws_api_gateway_rest_api.DSOMY.id
}

resource "aws_api_gateway_rest_api" "BqahA" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  api_key_source = "HEADER"
  endpoint_configuration {
    types = ["EDGE"]
  }

  minimum_compression_size = -1
  name                     = "dev-mx-atrium"
}

resource "aws_api_gateway_rest_api" "DSOMY" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  api_key_source = "HEADER"
  endpoint_configuration {
    types = ["EDGE"]
  }

  minimum_compression_size = -1
  name                     = "strings-manager-dev"
}

resource "aws_api_gateway_rest_api" "kKkKC" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  api_key_source = "HEADER"
  endpoint_configuration {
    types = ["EDGE"]
  }

  minimum_compression_size = -1
  name                     = "dev-address-manager"
}

resource "aws_api_gateway_rest_api" "q8sxd5phn7" {
  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  api_key_source = "HEADER"
  endpoint_configuration {
    types = ["EDGE"]
  }

  minimum_compression_size = -1
  name                     = "dev-conference-manager"
}

resource "aws_api_gateway_stage" "DRDpA" {
  deployment_id = aws_api_gateway_deployment.ek5qe4_81r95d67sj.id
  rest_api_id   = aws_api_gateway_rest_api.DSOMY.id
  stage_name    = "dev"
}

resource "aws_api_gateway_stage" "q8sxd5phn7_dev" {
  deployment_id = aws_api_gateway_deployment.b1xxlj_q8sxd5phn7.id
  rest_api_id   = aws_api_gateway_rest_api.q8sxd5phn7.id
  stage_name    = "dev"
}

resource "aws_api_gateway_stage" "wHFrx" {
  deployment_id = aws_api_gateway_deployment.bbdlxc_6tpeua70ga.id
  rest_api_id   = aws_api_gateway_rest_api.kKkKC.id
  stage_name    = "dev"
}

resource "aws_api_gateway_stage" "wJfMF" {
  deployment_id = aws_api_gateway_deployment.McHsA.id
  rest_api_id   = aws_api_gateway_rest_api.BqahA.id
  stage_name    = "dev"
}

