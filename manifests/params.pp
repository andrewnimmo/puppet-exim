# == class: exim::params
#
# This module sets all default parameters
#
class exim::params {
  case $::osfamily {
    'debian': {
      $exim_light_package = 'exim4'
      $exim_heavy_package = 'exim4-daemon-heavy'
      $exim_service = 'exim4'
      $config_path = '/etc/exim4/exim4.conf'
    }
    'redhat': {
      $exim_light_package = 'exim'
      $exim_heavy_package = 'exim'
      $exim_service = 'exim'
      $config_path = '/etc/exim/exim.conf'
    }
    default: {
      fail("The ${module_name} module is not supported on ${::osfamily} based systems")
    }
  }

  $acl_not_smtp                       = undef
  $acl_smtp_auth                      = undef
  $acl_smtp_data                      = undef
  $acl_smtp_mail                      = undef
  $acl_smtp_mime                      = undef
  $acl_smtp_rcpt                      = 'acl_check_rcpt'
  $allow_mx_to_ip                     = false
  $auto_thaw                          = undef
  $av_scanner                         = undef
  $callout_domain_positive_expire     = undef
  $check_spool_space                  = undef
  $chunking_advertise_hosts           = undef
  $daemon_smtp_ports                  = undef
  $defaults                           = true
  $delay_warning                      = undef
  $deliver_queue_load_max             = undef
  $errors_reply_to                    = undef
  $extract_addresses_remove_arguments = undef
  $freeze_tell                        = undef
  $gnutls_compat_mode                 = undef
  $heavy                              = false
  $helo_allow_chars                   = undef
  $host_lookup                        = '*'
  $hosts_treat_as_local               = undef
  $ignore_bounce_errors_after         = '2d'
  $includes                           = []
  $ldap_default_servers               = undef
  $local_from_check                   = true
  $local_interfaces                   = undef
  $log_file_path                      = undef
  $log_lost_incoming_connection       = true
  $log_retry_defer                    = true
  $log_sender_on_delivery             = true
  $log_skip_delivery                  = true
  $log_smtp_confirmation              = true
  $log_smtp_connection                = true
  $log_smtp_protocol_error            = true
  $log_smtp_syntax_error              = true
  $log_tls_peerdn                     = true
  $log_mail_subject                   = false
  $log_8bitmime                       = undef
  $log_acl_warn_skipped               = true
  $log_address_rewrite                = false
  $log_all_parents                    = false
  $log_arguments                      = false
  $log_connection_reject              = true
  $log_delay_delivery                 = true
  $log_deliver_time                   = false
  $log_delivery_size                  = false
  $log_dnslist_defer                  = true
  $log_dnssec                         = false
  $log_etrn                           = true
  $log_host_lookup_failed             = true
  $log_ident_timeout                  = false
  $log_incoming_interface             = false
  $log_incoming_port                  = false
  $log_millisec                       = false
  $log_outgoing_interface             = false
  $log_outgoing_port                  = false
  $log_queue_run                      = true
  $log_queue_time                     = false
  $log_queue_time_overall             = false
  $log_pid                            = false
  $log_proxy                          = false
  $log_received_recipients            = false
  $log_received_sender                = false
  $log_rejected_header                = true
  $log_return_path_on_delivery        = false
  $log_sender_verify_fail             = true
  $log_size_reject                    = true
  $log_smtp_incomplete_transaction    = false
  $log_smtp_mailauth                  = false
  $log_smtp_no_mail                   = false
  $log_tls_certificate_verified       = true
  $log_tls_cipher                     = true
  $log_tls_sni                        = false
  $log_unknown_in_list                = false
  $macros                             = {}
  $manage_service                     = false
  $message_logs                       = undef
  $message_size_limit                 = undef
  $never_users                        = [ 'root' ]
  $qualify_domain                     = undef
  $queue_only                         = false
  $queue_only_load                    = undef
  $queue_run_max                      = undef
  $remote_max_parallel                = undef
  $rfc1413_hosts                      = '*'
  $rfc1413_query_timeout              = '5s'
  $smtp_accept_max_nonmail            = undef
  $smtp_accept_max_per_connection     = undef
  $smtp_accept_max_per_host           = undef
  $smtp_accept_max                    = undef
  $smtp_accept_queue_per_connection   = undef
  $smtp_accept_queue                  = undef
  $smtp_accept_reserve                = undef
  $smtp_banner                        = undef
  $smtp_reserve_hosts                 = undef
  $spamd_address                      = undef
  $split_spool_directory              = false
  $syslog_timestamp                   = true
  $system_filter                      = undef
  $timeout_frozen_after               = '7d'
  $tls_advertise_hosts                = '*'
  $tls_certificate                    = undef
  $tls_privatekey                     = undef
  $trusted_users                      = undef
}
