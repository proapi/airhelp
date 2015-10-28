require_relative 'record'
require_relative 'processor'

class Airhelp < Thor
  desc "convert input.csv output.csv", "converts input.csv file to output.csv containing results"
  long_desc <<-LONGDESC
    `airhelp.rb convert` will convert input file to output file.

    > $ airhelp.rb convert input.csv output.csv

    > from: Michał Pawelski
  LONGDESC
  def convert(input, output)
    puts "input file: #{input} - output file: #{output}"
    puts 'Start of prcessing...'
    Processor.new(input, output).start
    puts 'Ending...'
  end
end
