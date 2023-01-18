if platform?('windows')
  include_recipe 'guided-install::guided_install_windows'
else
  include_recipe 'guided-install::guided_install_linux'
end
