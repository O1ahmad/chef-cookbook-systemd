# Contributing Guidelines

:heavy_check_mark::tada: Let's make code better together - Thanks for taking the time to contribute! :tada::heavy_check_mark:

The following is a set of guidelines for contributing to *0x0I Chef cookbooks*, which are hosted under the [0x0I](https://github.com/0x0I?tab=repositories) developer account on GitHub. These are mostly guidelines, not rules. Use your best judgment, and feel free to propose changes to this document in a pull request.

For general information and guidelines for contributing to these cookbooks and the Chef supermarket community, see the [community page](https://github.com/chef/supermarket).

**Table of Contents**
  - [Pull Requests](#pull-requests)
      - [CI Pipeline](#ci-pipeline)
  - [Issues](#issues)
      - [Issue Types](#issue-types)
  - [Workflow and backlog](#workflow-and-backlog)
  - [Code of Conduct](#code-of-conduct)

## Pull Requests

All [PRs](https://github.com/0x0I/chef-cookbook-systemd/pulls) are welcome! :+1: The following guidelines and CI pipeline are provided for validating role functionality and avoiding regressions for each submitted request:

**Note:** to download and install dependencies, execute `bundle install` at project root. A working installation of Ruby is required.

#### CI Pipeline

| Test | Description | Dependencies | Validation Command |
| --- | --- | --- | --- |
| :zap: `rubocop` | Validates `ruby` adheres to coding standards and best practices as [configured](https://github.com/0x0I/chef-cookbook-systemd/blob/master/.rubocop.yml). | [rubocop](https://docs.rubocop.org/en/stable/) (ruby geme) | `rubocop .` |
| :zap: `foodcritic` | Validates Chef cookbook and construct usage adheres to Chef standards and practices as configured | [foodcritic](http://www.foodcritic.io/) (ruby gem) | `foodcritic .` |
| :wrench: `integration testing` | Utilizing Chef's [test-kitchen](https://docs.chef.io/kitchen.html) framework and the [kitchen-chef(-zero)](https://docs.chef.io/config_yml_kitchen.html#provisioner-settings) provisioner, integration testing of this role is organized according to the various provisioning phases and should be executed prior to PR submission to validate new modifications and identify/prevent regressions. | [test-kitchen](https://github.com/test-kitchen/test-kitchen#test-kitchen) (Ruby gem) | `kitchen test` |
| :traffic_light: `Continuous Integration (CI)` | Automatic E2E testing of this role is accomplished leveraging the [Travis-CI](https://travis-ci.com/0x0I/chef-cookbook-systemd) test infrastructure platform and is executed on each pull request. Requests should not be merged unless all tests pass or the community approves otherwise. | *N/A* | *see* [.travis.yml](https://github.com/0x0I/chef-cookbook-systemd/blob/master/.travis.yml) for additional details |

## Issues

New GitHub issues can be [opened](https://github.com/0x0I/chef-cookbook-systemd/issues/new) and [tracked](https://github.com/0x0I/chef-cookbook-systemd/issues) in a similar fashion as with most Github repositories by making use of the standard Github issue management facilities.

Reference the following issue reporting guide for more details:

#### Issue Types

| Issue Type | Description |
| --- | --- |
| :arrow_up: `:enhancement:` | Feature requests. |
| :bug: `:bug:` | Confirmed bugs or reports that are very likely to be bugs. |
| :question: `:question:` | Questions more than bug reports or feature requests (e.g. how do I do X). |
| :eyeglasses: :heartpulse:`:feedback:` | General feedback more than bug reports or feature requests. |

## Workflow and backlog

Reference this repository's [wiki](https://github.com/0x0I/chef-cookbook-systemd/wiki) to visualize the project roadmap, workflow and backlog to stay up to speed with development  plans and work in progress.

## Code of Conduct

See the [Chef Code of Conduct](https://docs.chef.io/community_guidelines.html).
