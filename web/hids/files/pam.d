# The PAM configuration file for the cron daemon

@include common-auth

# Sets the loginuid process attribute
session    sufficient     pam_loginuid.so

# Read environment variables from pam_env's default files, /etc/environment
# and /etc/security/pam_env.conf.
session       sufficient   pam_env.so

# In addition, read system locale information
session       sufficient   pam_env.so envfile=/etc/default/locale

@include common-account
@include common-session-noninteractive

# Sets up user limits, please define limits for cron tasks
# through /etc/security/limits.conf
session    sufficient   pam_limits.so