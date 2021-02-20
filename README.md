# re2 CI

Docker images used by the [re2](https://github.com/mudge/re2) project to test
against legacy Ruby versions and all ABI versions of the underlying [re2
library](https://github.com/google/re2).

## Images

* `mudge/re2-ci:1.8`: an Ubuntu 16.04 image with Ruby 1.8.7 installed from the [Brightbox Ruby packages repository](https://www.brightbox.com/docs/ruby/ubuntu/).
* `mudge/re2-ci:1.9.1`: an Ubuntu 16.04 image with Ruby 1.9.3 installed from the [Brightbox Ruby packages repository](https://www.brightbox.com/docs/ruby/ubuntu/).
* `mudge/re2-ci:2.0`: an Ubuntu 16.04 image with Ruby 2.0 installed from the [Brightbox Ruby packages repository](https://www.brightbox.com/docs/ruby/ubuntu/).

All `re2-ci` images have RubyGems 2.7.11 installed and Bundler 1.17.3. Note that the 1.8 image disables Bundler's SSL verification otherwise it cannot communicate with rubygems.org.

* `mudge/libre2-deb`: an Ubuntu 16.04 image with [fpm](https://github.com/jordansissel/fpm) installed for packaging versions of the underlying [re2 library](https://github.com/google/re2) for use on GitHub Actions.

## References

* Taken mostly from the [RSpec Docker Images](https://github.com/rspec/docker-ci) used to test [RSpec Core](https://github.com/rspec/rspec-core) against end-of-lifed versions of Ruby.

# License

Copyright © 2021 Paul Mucur

Distributed under the MIT License.
