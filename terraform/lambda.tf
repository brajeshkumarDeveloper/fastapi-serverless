resource "aws_lambda_function" "fastapi_lambda" {
  function_name = "fastapi_lambda"
  role          = aws_iam_role.lambda_role.arn
  handler       = "main.handler"
  runtime       = "python3.12"

  filename         = "lambda.zip"
  source_code_hash = filebase64sha256("lambda.zip")

  memory_size = 256
  timeout     = 10
}