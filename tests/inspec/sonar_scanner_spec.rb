# Check if sonar-scanner is functionnal

control 'sonar-scanner-01' do
  impact 1.0
  title 'Sonar-scanner install'
  desc 'Sonar-scanner should be functionnal'
  describe command('sonar-scanner --version') do
    its('exit_status') { should eq 0 }
  end
end
