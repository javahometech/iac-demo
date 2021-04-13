output "jenkins_master_alb_dns_name" {
  description = "Jenkins Master Application Load Balancer DNS Name"
  value       = module.ecs-fargate-service.aws_lb_lb_dns_name
}
/// comments added///
//chnaged//