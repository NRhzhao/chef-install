# frozen_string_literal: true

############
# REQUIRED #
############

default['chef_install']['env']['new_relic_api_key'] = ''
default['chef_install']['env']['new_relic_account_id'] = ''

############
# OPTIONAL #
############

default['chef_install']['env']['new_relic_region'] = 'US'
default['chef_install']['env']['http_proxy'] = nil

default['chef_install']['verbosity'] = ''

####################
# TARGETED INSTALL #
####################

default['chef_install']['install_name'] = %w(infrastructure-agent-installer logs-integration)

########
# TAGS #
########

default['chef_install']['tags'] = {}

################
# CLI BEHAVIOR #
################

default['chef_install']['timeout_seconds'] = 600
