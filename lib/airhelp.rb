require 'thor'
require 'airhelp/processor'
require 'airhelp/record'

module Airhelp
  class Base < Thor
    desc "convert input.csv output.csv", "converts input.csv file to output.csv containing results"
    long_desc <<-LONGDESC
      `ruby airhelp.rb convert input.csv output.csv` will process input file as a csv to output file, and optionaly if errors occurs there are saved by default to errors.csv file.

      The --errors option specifies the output file for saving errors.

      > $ airhelp.rb convert input.csv output.csv

      > from: Michał Pawelski
    LONGDESC
    option :errors, default: 'errors.csv', banner: 'optional flag to specify output file for errors'
    def convert(input, output)
      puts "input file: #{input} - output file: #{output}"
      puts 'Start of prcessing...'
      Processor.new(input, output, options).start
      puts 'Ending...'
    end
  end
end
