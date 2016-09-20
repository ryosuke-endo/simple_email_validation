## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_email_validation'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_email_validation

## Usage
it is a valid email address
```
class User < ActiveRecord::Base
  validates :email_field, email: true
end
```

it conforms to RFC5322

## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request
