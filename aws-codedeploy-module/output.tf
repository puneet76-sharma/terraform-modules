output "codedeploy_app_name" {
  value = aws_codedeploy_app.codedeploy_app.name
}
output "dep_group_name" {
  value = aws_codedeploy_deployment_group.deployment_group.deployment_group_name
}