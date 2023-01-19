#################
# INSTALL NAMES #
#################

install_names = node["guided_install"]["install_name"].join(",")

#############
# VERBOSITY #
#############

verbosity = node["guided_install"]["verbosity"]
verbosity_modes = ["debug", "trace"]

########
# TAGS #
########

tags_array = Array.new

node["guided_install"]["tags"].each do |key, value|
  tags_array.append("#{key}:#{value}")
end

tags = tags_array.join(",")

###########
# OPTIONS #
###########

options = "-y"

options += " --#{verbosity}" if verbosity_modes.include? verbosity
options += " --tag #{tags}" unless tags.nil? || tags.empty?
options += " -n #{install_names}" unless install_names.nil? || install_names.empty?

##################
# GUIDED INSTALL #
##################

execute "guided install" do
  command "curl -Ls https://download.newrelic.com/install/newrelic-cli/scripts/install.sh | bash && sudo -E /usr/local/bin/newrelic install #{options}"
  environment node["guided_install"]["environment_variables"]
  timeout node["guided_install"]["timeout_seconds"]
end
