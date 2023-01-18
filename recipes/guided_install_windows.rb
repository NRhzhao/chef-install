powershell_script 'guided install' do
  code "[Net.ServicePointManager]::SecurityProtocol = 'tls12, tls'; (New-Object System.Net.WebClient).DownloadFile(\"https://download.newrelic.com/install/newrelic-cli/scripts/install.ps1\", \"$env:TEMP\\install.ps1\"); & PowerShell.exe -ExecutionPolicy Bypass -File $env:TEMP\\install.ps1; & 'C:\\Program Files\\New Relic\\New Relic CLI\\newrelic.exe' install -y"

  live_stream true
  environment node['guided_install']
end
