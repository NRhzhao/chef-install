#[![New Relic Experimental header](https://github.com/newrelic/opensource-website/raw/main/src/images/categories/Experimental.png)](https://opensource.newrelic.com/oss-category/#new-relic-experimental)

# Chef cookbook for the New Relic using [Guided Install](https://docs.newrelic.com/docs/infrastructure/host-integrations/installation/new-relic-guided-install-overview/)

## Install and use the Chef cookbook

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

- Chef 15+

### Recipes

#### `newrelic-install::default`

Determines the platform and includes the appropriate platform specific recipe. This is the only recipe that should be included in a node's run list.

### Usage

TBD

#### Cookbook usage

- Set any attributes necessary for your desired configuration
- Add the `newrelic-install::default` recipe your run list

### Testing

Refer to
https://github.com/chef-cookbooks/community_cookbook_documentation/blob/master/TESTING.MD

### Releasing new versions

For releasing a new version to the [Chef Supermarket][12] follow this steps:

- Update the version number in [metadata.rb][13].
- Create the github release for the new version. This will trigger a 
  GitHub Actions job that will deploy the new version.
- Watch the build with the version number in Github Actions: 
  https://github.com/newrelic/infrastructure-agent-chef/actions
- If that passes, the new version should be on
  https://supermarket.chef.io/cookbooks/newrelic-infra and available to
  use everywhere

## Support

Should you need assistance with New Relic products, you are in good hands with several support diagnostic tools and support channels.

>New Relic offers NRDiag, [a client-side diagnostic utility](https://docs.newrelic.com/docs/using-new-relic/cross-product-functions/troubleshooting/new-relic-diagnostics) that automatically detects common problems with New Relic agents. If NRDiag detects a problem, it suggests troubleshooting steps. NRDiag can also automatically attach troubleshooting data to a New Relic Support ticket. Remove this section if it doesn't apply.

If the issue has been confirmed as a bug or is a feature request, file a GitHub issue.

**Support Channels**

* [New Relic Documentation](https://docs.newrelic.com): Comprehensive guidance for using our platform
* [New Relic Community](https://discuss.newrelic.com/c/support-products-agents/new-relic-infrastructure): The best place to engage in troubleshooting questions
* [New Relic Developer](https://developer.newrelic.com/): Resources for building a custom observability applications
* [New Relic University](https://learn.newrelic.com/): A range of online training for New Relic users of every level
* [New Relic Technical Support](https://support.newrelic.com/) 24/7/365 ticketed support. Read more about our [Technical Support Offerings](https://docs.newrelic.com/docs/licenses/license-information/general-usage-licenses/support-plan).

## Privacy

At New Relic we take your privacy and the security of your information seriously, and are committed to protecting your information. We must emphasize the importance of not sharing personal data in public forums, and ask all users to scrub logs and diagnostic information for sensitive information, whether personal, proprietary, or otherwise.

We define “Personal Data” as any information relating to an identified or identifiable individual, including, for example, your name, phone number, post code or zip code, Device ID, IP address, and email address.

For more information, review [New Relic’s General Data Privacy Notice](https://newrelic.com/termsandconditions/privacy).

## Contribute

We encourage your contributions to improve this project! Keep in mind that when you submit your pull request, you'll need to sign the CLA via the click-through using CLA-Assistant. You only have to sign the CLA one time per project.

If you have any questions, or to execute our corporate CLA (which is required if your contribution is on behalf of a company), drop us an email at opensource@newrelic.com.

**A note about vulnerabilities**

As noted in our [security policy](../../security/policy), New Relic is committed to the privacy and security of our customers and their data. We believe that providing coordinated disclosure by security researchers and engaging with the security community are important means to achieve our security goals.

If you believe you have found a security vulnerability in this project or any of New Relic's products or websites, we welcome and greatly appreciate you reporting it to New Relic through [HackerOne](https://hackerone.com/newrelic).

If you would like to contribute to this project, review [these guidelines](./CONTRIBUTING.md).

To all contributors, we thank you!  Without your contribution, this project would not be what it is today.

## License

chef-install is licensed under the [Apache 2.0](http://apache.org/licenses/LICENSE-2.0.txt) License.
