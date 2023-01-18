#################
# INSTALL NAMES #
#################

install_names = node["guided_install"]["InstallName"].join(",")

#############
# VERBOSITY #
#############

verbosity = node["guided_install"]["Verbosity"]
verbosity_modes = ["debug", "trace"]

########
# TAGS #
########

tags_array = Array.new

node["guided_install"]["Tags"].each do |key, value|
  tags_array.append("#{key}:#{value}")
end

tags = tags_array.join(",")

###########
# OPTIONS #
###########

options = "-y"

options += " --#{verbosity}" if verbosity_modes.include? verbosity
options += " --tag #{tags}" unless install_names.nil? || install_names.empty? 
options += " -n #{install_names}" unless install_names.nil? || install_names.empty?

##################
# GUIDED INSTALL #
##################

execute "guided install" do
  command "curl -Ls https://download.newrelic.com/install/newrelic-cli/scripts/install.sh | bash && sudo -E /usr/local/bin/newrelic install #{options}"
  environment node["guided_install"]["EnvironmentVariables"]
  timeout node["guided_install"]["TimeoutSeconds"]
end
