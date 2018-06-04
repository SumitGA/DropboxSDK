# DropboxSDK::ARKS

Welcome to DropboxSDK for ruby! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/DropboxSDK/ARKS`. To experiment with that code, run `bin/console` for an interactive prompt.


## Installation
This gem has dependencies on Dropbox sdk ruby client, so go ahead and install that dependency first.

```ruby
gem 'dropbox_sdk_v2'
```

Add this line to your application's Gemfile:

```ruby
gem 'DropboxSDK-ARKS'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install DropboxSDK-ARKS

## Usage
> Initialize the Object

```ruby
client = DropboxSDK::ARKS::DropboxIntegrations.new("your dropbox access_token")
```
> List all the files in your folder

```ruby
lists = client.list_files("your folder name")
```
> Download all files 

```ruby
client.download_files(lists, " your root path to download files", "folder name")
```
Here the folder name has to comply with the same name existing in your dropbox account.
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/DropboxSDK-ARKS. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DropboxSDK::ARKS project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/DropboxSDK-ARKS/blob/master/CODE_OF_CONDUCT.md).
