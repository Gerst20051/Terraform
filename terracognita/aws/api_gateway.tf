resource "aws_api_gateway_deployment" "b1xxlj_q8sxd5phn7" {
  rest_api_id = aws_api_gateway_rest_api.q8sxd5phn7.id
}

resource "aws_api_gateway_deployment" "bbdlxc_6tpeua70ga" {
  rest_api_id = aws_api_gateway_rest_api.bcOxb.id
}

resource "aws_api_gateway_deployment" "ek5qe4_81r95d67sj" {
  rest_api_id = aws_api_gateway_rest_api.CHKdE.id
}

resource "aws_api_gateway_deployment" "uvtqa" {
  rest_api_id = aws_api_gateway_rest_api.wGqNP.id
}

resource "aws_api_gateway_resource" "AOAaz" {
  parent_id   = ""
  path_part   = ""
  rest_api_id = aws_api_gateway_rest_api.CHKdE.id
}

resource "aws_api_gateway_resource" "ODqse" {
  parent_id   = aws_api_gateway_rest_api.wGqNP.root_resource_id
  path_part   = "{proxy+}"
  rest_api_id = "7xbxyxo19e"
}

resource "aws_api_gateway_resource" "UuFwl" {
  parent_id   = ""
  path_part   = ""
  rest_api_id = aws_api_gateway_rest_api.bcOxb.id
}

resource "aws_api_gateway_resource" "ZOVKB" {
  parent_id   = "nj9ulad89f"
  path_part   = "{proxy+}"
  rest_api_id = aws_api_gateway_rest_api.CHKdE.id
}

resource "aws_api_gateway_resource" "coVsd" {
  parent_id   = ""
  path_part   = ""
  rest_api_id = aws_api_gateway_rest_api.wGqNP.id
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

resource "aws_api_gateway_resource" "zjRYV" {
  parent_id   = "dgetgcb262"
  path_part   = "{proxy+}"
  rest_api_id = aws_api_gateway_rest_api.bcOxb.id
}

resource "aws_api_gateway_rest_api" "CHKdE" {
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

resource "aws_api_gateway_rest_api" "bcOxb" {
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

resource "aws_api_gateway_rest_api" "wGqNP" {
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

resource "aws_api_gateway_stage" "dLGBy" {
  deployment_id = aws_api_gateway_deployment.uvtqa.id
  rest_api_id   = aws_api_gateway_rest_api.wGqNP.id
  stage_name    = "dev"
}

resource "aws_api_gateway_stage" "doeCk" {
  deployment_id = aws_api_gateway_deployment.bbdlxc_6tpeua70ga.id
  rest_api_id   = aws_api_gateway_rest_api.bcOxb.id
  stage_name    = "dev"
}

resource "aws_api_gateway_stage" "feFYu" {
  deployment_id = aws_api_gateway_deployment.ek5qe4_81r95d67sj.id
  rest_api_id   = aws_api_gateway_rest_api.CHKdE.id
  stage_name    = "dev"
}

resource "aws_api_gateway_stage" "q8sxd5phn7_dev" {
  deployment_id = aws_api_gateway_deployment.b1xxlj_q8sxd5phn7.id
  rest_api_id   = aws_api_gateway_rest_api.q8sxd5phn7.id
  stage_name    = "dev"
}

