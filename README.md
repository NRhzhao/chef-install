[![New Relic Experimental header](https://github.com/newrelic/opensource-website/raw/main/src/images/categories/Experimental.png)](https://opensource.newrelic.com/oss-category/#new-relic-experimental)

# newrelic-install cookbook for [Guided Install](https://docs.newrelic.com/docs/infrastructure/host-integrations/installation/new-relic-guided-install-overview/)

`newrelic-install` is a chef cookbook that runs on newrlic cli,
and is currently in experimental phase.

Currently, we have included Linux and Windows support for New Relic's infrastructure and logs integrations.

## Installation

### Requirements

#### Platforms

* Amazon Linux all versions
* CentOS version 5 or higher
* Debian version 7 ("Wheezy") or higher
* Red Hat Enterprise Linux (RHEL) version 5 or higher
* Ubuntu versions 16.04.*, 18.04.*, 20.04* (LTS versions)
* Windows Server 2008, 2012, 2016, and 2019, and their service packs.
* SUSE Linux Enterprise 11, 12

#### Chef

* Chef 15+

### Recipes

#### `newrelic-install::default`

Determines the platform and includes the appropriate platform specific recipe.
This is the only recipe that should be included in a node's run list.

### Usage

#### Cookbook usage

* Set any attributes necessary for your desired configuration
* Add the `newrelic-install::default` recipe your run list

### Attributes

See [attributes/defaults.rb][3] for more details and default values.

#### Required

| Name | Default value | Description |
|:-----|:--------------|:------------|
| `default['newrelic_install']['env']['NEW_RELIC_API_KEY']` | `nil` | new relic api key |
| `default['newrelic_install']['env']['NEW_RELIC_ACCOUNT_ID']` | `nil` | new relic account id |

#### Optional

| Name | Default value | Description |
|:-----|:--------------|:------------|
| `default['newrelic_install']['env']['NEW_RELIC_REGION']` | `US` | new relic region |
| `default['newrelic_install']['env']['HTTP_PROXY']` | `nil` | proxy url if you are behind a firewall |
| `default['newrelic_install']['verbosity']` | `nil` | Verbosity options for the installation (`debug` or `trace`). Writes verbose output to a log file on the host. |
| `default['newrelic_install']['install_names']` | `%w(infrastructure-agent-installer log-integration)` | agents to be installed |
| `default['newrelic_install']['tags']` | `{}` | key value pair tags added through custom attributes |
| `default['newrelic_install']['timeout_seconds']` | `600` | Sets timeout for installation task. |

### Testing

Refer to [testing](https://github.com/chef-cookbooks/community_cookbook_documentation/blob/master/TESTING.MD)

### Releasing new versions

For releasing a new version to the [Chef Supermarket][12] follow this steps:

* Update the version number in [metadata.rb][13].
* Create the github release for the new version.
* Watch the build with the version number in Github Actions
* If that passes, the new version should be on TBD

## Privacy

At New Relic we take your privacy and the security of your information
seriously, and are committed to protecting your information. We must emphasize
the importance of not sharing personal data in public forums,
and ask all users to scrub logs and diagnostic information for sensitive
information, whether personal, proprietary, or otherwise.

We define “Personal Data” as any information relating to an identified or
identifiable individual, including, for example, your name, phone number,
post code or zip code, Device ID, IP address, and email address.

For more information, review [New Relic’s General Data Privacy Notice](https://newrelic.com/termsandconditions/privacy).

## Contribute

We encourage your contributions to improve this project! Keep in mind that
when you submit your pull request, you'll need to sign the CLA via the
click-through using CLA-Assistant. You only have to sign the CLA
one time per project.

If you have any questions, or to execute our corporate CLA (which is required
if your contribution is on behalf of a company),
drop us an email at opensource@newrelic.com.

## A note about vulnerabilities

As noted in our [security policy](../../security/policy), New Relic is
committed to the privacy and security of our customers and their data.
We believe that providing coordinated disclosure by security researchers
and engaging with the security community are important means to achieve our
security goals.

If you believe you have found a security vulnerability in this project or any
of New Relic's products or websites, we welcome and greatly appreciate you
reporting it to New Relic through [HackerOne](https://hackerone.com/newrelic).

If you would like to contribute to this project, review [these guidelines](./CONTRIBUTING.md).

To all contributors, we thank you!  Without your contribution, this project
would not be what it is today.

## License

chef-install is licensed under the [Apache 2.0](http://apache.org/licenses/LICENSE-2.0.txt)
License.
