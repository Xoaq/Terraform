# export the ecs service
output "ecs_service" {
  value = aws_ecs_cluster.ecs_cluster.id
}