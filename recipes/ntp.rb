# To install, enable and run ntp service
package 'ntp' do
  action :install
end
  
service 'ntp' do
  action [:enable, :start]
end