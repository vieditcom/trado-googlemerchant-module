![alt text](http://cdn2.tomdallimore.com/assets/google-merchant-link-img.png "Trado")

# Google Merchant

[![Gem Version](https://badge.fury.io/rb/trado_googlemerchant_module.svg)](https://badge.fury.io/rb/trado_googlemerchant_module)

Module for Google Merchant Product Feed functionality in the Trado Ecommerce platform. If you would like to get started using the Trado Ecommerce platform, head on over to the [Official site](http://www.trado.io/?utm_source=github&utm_medium=website&utm_campaign=trado)!

[Release notes](http://release.tomdallimore.com/projects/trado-googlemerchant)

## Installation

Add module to your Gemfile:

```ruby
gem 'trado_googlemerchant_module'
```

Then run bundle to install the Gem:

```sh
bundle install
```

Now generate migrations and assign model concerns:

```sh
rails generate trado_googlemerchant_module:install
bundle exec rake db:migrate
```

Restart the main application server:

```sh
foreman start -f Procfile.dev
```

You can view the XML readable format of the feed at:

```
http://www.example.com/google_merchant/feed.xml
```

And you can submit the RSS format of the feed to Google with the following url:

```
http://www.example.com/google_merchant/feed.rss
```

## Versioning

Trado Google Merchant module follows Semantic Versioning 2.0 as defined at
<http://semver.org>.

## How to contribute

* Fork the project
* Create your feature or bug fix
* Add the requried tests for it.
* Commit (do not change version or history)
* Send a pull request against the *development* branch

## Copyright
Copyright (c) 2016 [Tom Dallimore](http://www.tomdallimore.com/?utm_source=trado-google-merchant-module-github&utm_medium=website&utm_campaign=tomdallimore) ([@tom_dallimore](http://twitter.com/tom_dallimore))  
Licenced under the MIT licence.
