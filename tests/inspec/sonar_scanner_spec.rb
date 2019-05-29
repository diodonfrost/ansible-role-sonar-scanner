# Check if sonar-scanner is functionnal

sonar_scanner_command = 'sonar-scanner --version'

control 'sonar-scanner-01' do
  impact 1.0
  title 'Sonar-scanner install'
  desc 'Sonar-scanner should be functionnal'
  describe command(sonar_scanner_command) do
    its('exit_status') { should eq 0 }
  end
end
