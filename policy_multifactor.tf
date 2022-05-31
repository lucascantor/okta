# ------------------------------------------------------------------------------------------
# (Built-in) default multifactor policy

resource "okta_policy_mfa_default" "default_mfa_policy" {
  is_oie = true

  okta_verify = {
    enroll = "REQUIRED"
  }

  okta_email = {
    enroll = "NOT_ALLOWED"
  }

  depends_on = [
    okta_authenticator.okta_verify,
    okta_authenticator.okta_email,
  ]
}
