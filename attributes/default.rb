############
# REQUIRED #
############

default["guided_install"]["EnvironmentVariables"]["NEW_RELIC_API_KEY"] = nil
default["guided_install"]["EnvironmentVariables"]["NEW_RELIC_ACCOUNT_ID"] = nil


############
# OPTIONAL #
############

default["guided_install"]["EnvironmentVariables"]["NEW_RELIC_REGION"] = "US"
default["guided_install"]["EnvironmentVariables"]["HTTPS_PROXY"] = nil

default["guided_install"]["Verbosity"] = nil

####################
# TARGETED INSTALL #
####################

default["guided_install"]["InstallName"] = ["infrastructure-agent-installer", "logs-integration"]

########
# TAGS #
########

default["guided_install"]["Tags"] = {
    "Testing": 123,
    "Testing2": "456"
}

################
# CLI BEHAVIOR #
################

default["guided_install"]["TimeoutSeconds"] = 600
