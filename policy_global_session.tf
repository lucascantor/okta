# ------------------------------------------------------------------------------------------
# (Built-in) default global session policy

data "okta_default_policy" "default_signon_policy" {
  type = "OKTA_SIGN_ON"
}

resource "okta_policy_rule_signon" "default_signon_policy_rule_1" {
  policy_id           = data.okta_default_policy.default_signon_policy.id
  name                = "DO NOT EDIT - Managed by Terraform"
  priority            = 1
  status              = "ACTIVE"
  network_connection  = "ANYWHERE"
  authtype            = "ANY"
  access              = "ALLOW"
  primary_factor      = "PASSWORD_IDP_ANY_FACTOR"
  mfa_required        = true
  mfa_prompt          = "ALWAYS"
  mfa_remember_device = false
  session_idle        = 120
  session_lifetime    = 120
  session_persistent  = true
  users_excluded      = []
}
