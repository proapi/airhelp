require_relative 'record'

class Airhelp < Thor
  desc "convert input.csv output.csv", "converts input.csv file to output.csv containing results"
  def convert(input, output)
    puts "input file: #{input} - output file: #{output}"
    puts Record.new.valid?
  end
end
