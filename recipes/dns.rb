# To add DNS entries

windows_dns_record 'Add DNS entries' do
  record_type 'IP Address'
  target '/etc/resolv.conf'
  zone 'UTC'
end