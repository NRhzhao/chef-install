# frozen_string_literal: true

newrelic_install 'install' do
  action                   :install
  new_relic_api_key        node['chef_install']['env']['NEW_RELIC_API_KEY']
  new_relic_account_id     node['chef_install']['env']['NEW_RELIC_ACCOUNT_ID']
  env                      node['chef_install']['env']
end
