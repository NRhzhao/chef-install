# frozen_string_literal: true

newrelic_install 'install' do
  action                   :install
  new_relic_api_key        node['chef_install']['env']['new_relic_api_key']
  new_relic_account_id     node['chef_install']['env']['new_relic_account_id']
  env                      node['chef_install']['env']
end
