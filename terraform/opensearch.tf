
resource "aws_opensearch_domain" "opensearch_backend" {
  domain_name = var.opensearch_domain_name

  cluster_config {
    instance_type = var.opensearch_instance_type
  }

  ebs_options {
    ebs_enabled = true
    volume_size = var.opensearch_volume_size
    volume_type = var.opensearch_volume_type
  }

  tags = {
    Owner       = var.tag_owner
    Email       = var.tag_email
    CostCenter  = var.tag_cost_center
  }
}
