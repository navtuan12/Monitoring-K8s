# outputs.tf
output "efs_file_system_id" {
  value = aws_efs_file_system.efs.id
}

