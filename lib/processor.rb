require 'csv'

class Processor

  attr_accessor :input, :output, :records, :errors, :index

  def initialize(input, output)
    @input = input
    @output = output
    @records = Array.new
    @errors = Array.new
    @index = 0
  end

  def start
    read
    write
    errors if @errors.any?
  end

  def read
    CSV.parse(File.read(@input), headers: true) do |row|
      @index += 1
      @records << Record.new(id: row[0], carrier_code: row[1], flight_number: row[2], flight_date: row[3])
    end
    puts "Parsed #{index} rows"
  end

  def write
    CSV.open(@output, 'w', write_headers: true,
    headers: Record.headers) do |writer|
      @records.each do |record|
        record.process
        if record.valid?
          writer << record.to_a
        else
          @errors << record
        end
      end
    end
  end

  def errors
    CSV.open('errors.csv', 'w', write_headers: true,
    headers: Record.headers('errors')) do |writer|
      @errors.each do |record|
        writer << record.to_a
      end
    end
  end

end
