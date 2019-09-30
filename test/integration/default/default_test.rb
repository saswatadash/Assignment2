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

describe port(11_211) do
  it { should be_listening }
end

# This control ensures that the cups service is disabled

describe service 'cups' do
  it { should be_disabled }
end

# This control ensures that the timezone is set to UTC

describe 'timezone' do
  it { should be_running }
end 