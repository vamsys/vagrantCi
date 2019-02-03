# # encoding: utf-8

# Inspec test for recipe hellochef_service::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


describe file('/usr/local/bin/hellochef.sh') do
  it {should be_a_file}
end

describe file('/etc/systemd/system/hellochef.service') do
  it {should exist}
end

