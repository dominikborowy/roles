resource "aws_iam_role" "roles" {
  for_each = {
    for role, value in var.role_dict : role => value if !contains(var.roles_to_omit, role)
  }
  name               = "${var.user-prefix}-${each.key}"
  assume_role_policy = each.value[1][0]
  managed_policy_arns = [for policy in each.value[0]: "${policy}"]
}
