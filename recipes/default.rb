newrelic_install 'install' do
  action                   :install
  new_relic_api_key        node['chef_install']['env']['new_relic_api_key']
  new_relic_account_id     node['chef_install']['env']['new_relic_account_id']
  env                      node['chef_install']['env'] 
end

# if platform?('windows')
#   include_recipe 'guided-install::guided_install_windows'
# else
#   include_recipe 'guided-install::guided_install_linux'
# end
