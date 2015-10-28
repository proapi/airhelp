# Airhelp

Test command line tool to parse CSV files, checking for ICAO and IATA codes.

## Installation

Install it from command line:

    $ gem install airhelp

## Runtime Dependencies

  * Ruby 1.9.3
  * RubyGems

## Development Dependencies

  * Bundler
  * Thor
  * ActiveModel

## Usage

  Basic usage:
  
    $ airhelp convert input.csv output.csv
    $ airhelp convert input.csv output.csv --errors errors.csv
    
  General help:
  
    $ airhelp help

  Command help:
    
    $ airhelp help convert
    
## Sample data in csv:
  
  Download: [data.csv](https://docs.google.com/a/proapi.eu/uc?id=0B6XHzebC0B8LTEd5X3YwdUk2STA&export=download)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
