# InSpec test for recipe task::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

# This controls checks if the ntp is installed, enabled and running

describe package('ntp') do
  it { should be_installed }
end 

describe service('ntp') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

# This control ensures that the cups service is disabled

describe service 'cups' do
  it { should be_disabled }
end

# This control ensures that the timezone is set to UTC
describe 'timezone' do
  it { should be_running }
end 

# Ubuntu is installed
describe package('ubuntu')
  it { should be_installed }
  its ('version') { should be '14.04'}
end

# Apache service should be enabled and running
describe service('apache') do 
  it { should be_enabled }
  it { should be_running }
end

# Port access should be enabled
describe port(8080)
 it { should be_listening }
 its ('protocols') { should cmp 'tcp' }
end

# Check if the splash page is working
describe http(' http://localhost') do
  its('status') { should cmp 200 }
end

# Check if the ping test is working
describe http('http://localhost:8080/ping') do
  ...
end