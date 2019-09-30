# This recipe sets the timezone of the host to UTC
timezone 'Sets the timezone to UTC' do
  timezone 'UTC'
  action :set
end