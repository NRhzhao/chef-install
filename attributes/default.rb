############
# REQUIRED #
############

default["guided_install"]["environment_variables"]["NEW_RELIC_API_KEY"] = nil
default["guided_install"]["environment_variables"]["NEW_RELIC_ACCOUNT_ID"] = nil


############
# OPTIONAL #
############

default["guided_install"]["environment_variables"]["NEW_RELIC_REGION"] = "US"
default["guided_install"]["environment_variables"]["HTTPS_PROXY"] = nil

default["guided_install"]["verbosity"] = nil

####################
# TARGETED INSTALL #
####################

default["guided_install"]["install_name"] = ["infrastructure-agent-installer", "logs-integration"]

########
# TAGS #
########

default["guided_install"]["tags"] = {
    "Testing": 123,
    "Testing2": "456"
}

################
# CLI BEHAVIOR #
################

default["guided_install"]["timeout_seconds"] = 600
