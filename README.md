# Masked

Gem created as testing task for scalex company.

It makes possible to mask input using @@@-like masks. eg:

```
Mask                | Input | Output
------------------------------------------
@@@                 | 5432  | 5432
@-@@                | 5432  | 5-432
@-@@                | @432  | @-432
TEST@@-@@-@@@       | 5432  | TEST54-32
TEST@@-@@-@@@       | 42    | 42
@-@@-TAIL           | 5432  | 5-43-TAIL2
@-@@-@@@@@@@@@-TAIL | 5432  | 5-43-2-TAIL
```

## Installation

Add this line to your application's Gemfile:

    gem 'masked'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install masked

## Usage

You can use Masked::Mask class directly e.g. in your models
or you could use Rails helper called `masked`

## Contributing

1. Fork it ( https://github.com/spscream/masked/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
