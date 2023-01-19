# frozen_string_literal: true

provides :newrelic_install
unified_mode true

property :new_relic_api_key,      String
property :new_relic_account_id,   String
property :install_names,          Array, default: %w(infrastructure-agent-installer logs-integration)
property :env,                    Hash
property :verbosity,              String
property :timeout_seconds,        Integer, defaunt: 600
property :tags,                   Hash, default: {}

action :install do
  check_required
  options = '-y'
  options += get_verbosity(new_resource.verbosity) unless new_resource.verbosity.nil? || new_resource.verbosity.empty?
  options += stringify_install_names(new_resource.install_names)
  options += get_tags(new_resource.tags)

  if platform?('windows')
    powershell_script 'newrelic install' do
      code "[Net.ServicePointManager]::SecurityProtocol = 'tls12, tls'; (New-Object System.Net.WebClient).DownloadFile(\"https://download.newrelic.com/install/newrelic-cli/scripts/install.ps1\", \"$env:TEMP\\install.ps1\"); & PowerShell.exe -ExecutionPolicy Bypass -File $env:TEMP\\install.ps1; & 'C:\\Program Files\\New Relic\\New Relic CLI\\newrelic.exe' install -y"
      live_stream true
      environment new_resource.env
      timeout new_resource.timeout_seconds
    end
  else
    execute 'newrelic install' do
      command "curl -Ls https://download.newrelic.com/install/newrelic-cli/scripts/install.sh | bash && sudo -E /usr/local/bin/newrelic install #{options}"
      live_stream true
      environment new_resource.env
      timeout new_resource.timeout_seconds
    end
  end
end

action_class do
  def check_required
    raise 'Please specify your newrelic api key' if new_resource.new_relic_api_key.nil?
    raise 'Please specify your newrelic account key' if new_resource.new_relic_account_id.nil?
  end

  def stringify_install_names(install_names)
    install_names = %w(infrastructure-agent-installer logs-integration) if install_names.nil? || install_names.empty?
    _ = " -n #{install_names.join(',')}" unless install_names.nil? || install_names.empty?
  end

  def get_verbosity(verbosity)
    verbosity_modes = %w(debug trace)
    _ = " --#{verbosity}" if verbosity_modes.include? verbosity
  end

  def get_tags(tags)
    deploy_tag = 'nr_deployed_by:newrelic-chef'
    tags_array = []
    tags.each do |key, value|
      tags_array.append("#{key}:#{value}")
    end
    tags_array.append(deploy_tag)
    _ = " --tag #{tags_array.join(',')}"
  end
end
