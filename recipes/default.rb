if platform?('windows')
  include_recipe 'chef-install::guided_install_windows'
else
  include_recipe 'chef-install::guided_install_linux'
end
