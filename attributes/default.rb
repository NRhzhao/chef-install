# frozen_string_literal: true

############
# REQUIRED #
############

default['chef_install']['env']['NEW_RELIC_API_KEY'] = ''
default['chef_install']['env']['NEW_RELIC_ACCOUNT_ID'] = ''

############
# OPTIONAL #
############

default['chef_install']['env']['NEW_RELIC_REGION'] = 'US'
default['chef_install']['env']['HTTP_PROXY'] = nil

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
